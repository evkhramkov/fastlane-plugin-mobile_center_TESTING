module Fastlane
  module Actions
    class ReleaseAction < Action
      def self.connection(upload_url = false)
        require 'faraday'
        require 'faraday_middleware'

        options = {
          url: upload_url ? upload_url : "https://api.mobile.azure.com"
        }

        Faraday.new(options) do |builder|
          if upload_url
            builder.request :multipart
            builder.request :url_encoded
          else
            builder.request :json
          end
          builder.response :json, content_type: /\bjson$/
          builder.use FaradayMiddleware::FollowRedirects
          builder.adapter :net_http
        end
      end

      def self.release_upload(api_token, owner_name, app_name)
        connection = self.connection

        connection.post do |req|
          req.url("/v0.1/apps/#{owner_name}/#{app_name}/release_uploads")
          req.headers['X-API-Token'] = api_token
          req.body = {}
        end
      end

      def self.upload(api_token, file, upload_id, upload_url)
        connection = self.connection(upload_url)

        options = {}
        options[:upload_id] = upload_id
        options[:ipa] = Faraday::UploadIO.new(file, 'application/octet-stream') if file and File.exist?(file)

        connection.post do |req|
          req.headers['X-HockeyAppToken'] = api_token
          req.body = options
        end
      end

      def self.commit_release(api_token, owner_name, app_name, upload_id)
        connection = self.connection

        connection.patch do |req|
          req.url("/v0.1/apps/#{owner_name}/#{app_name}/release_uploads/#{upload_id}")
          req.headers['X-API-Token'] = api_token
          req.body = {
            "status" => "committed"
          }
        end
      end

      def self.add_to_group(api_token, release_url, group_name, release_notes = '')
        connection = self.connection

        connection.patch do |req|
          req.url("/#{release_url}")
          req.headers['X-API-Token'] = api_token
          req.body = {
            "distribution_group_name" => group_name,
            "release_notes" => release_notes
          }
          puts req.body
        end
      end

      def self.run(params)
        UI.message("Running release action")

        response = self.release_upload(params[:api_token], params[:owner_name], params[:app_name])
        case response.status
        when 200...300
          upload_id = response.body['upload_id']
          upload_url = response.body['upload_url']
          UI.message("Start uploading release")
          response = self.upload(params[:api_token], params[:file], upload_id, upload_url)
          case response.status
          when 200...300
            UI.message("Uploaded successfully")
            response = self.commit_release(params[:api_token], params[:owner_name], params[:app_name], upload_id)
            case response.status
            when 200...300
              release_url = response.body['release_url']
              UI.message("Release commited with url #{release_url}")
              response = self.add_to_group(params[:api_token], release_url, params[:group])
              case response.status
              when 200...300
                release = response.body
                UI.message("Release #{release.short_version} was successfully released")
              else
                UI.user_error!("Error when trying to add release to group: #{response.status} - #{response.body}")
              end
            else
              UI.user_error!("Error when trying to commit release: #{response.status} - #{response.body}")
            end
          else
            UI.user_error!("Error when trying to upload file: #{response.status} - #{response.body}")
          end
        else
          UI.user_error!("Error when trying to get prerequisites: #{response.status} - #{response.body}")
        end
      end

      def self.description
        ""
      end

      def self.authors
        ["Evgeniy Khramkov"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "visual studio mobile center integration plugin"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :api_token,
                                  env_name: "MOBILE_CENTER_API_TOKEN",
                               description: "Auth token",
                                  optional: false,
                                      type: String),

          FastlaneCore::ConfigItem.new(key: :owner_name,
                                  env_name: "MOBILE_CENTER_OWNER_NAME",
                               description: "App name",
                                  optional: false,
                                      type: String),

          FastlaneCore::ConfigItem.new(key: :app_name,
                                  env_name: "MOBILE_CENTER_APP_NAME",
                               description: "App name",
                                  optional: false,
                                      type: String),

          FastlaneCore::ConfigItem.new(key: :file,
                                  env_name: "MOBILE_CENTER_DISTRIBUTE_FILE",
                               description: "Build release path",
                                  optional: false,
                                      type: String),

          FastlaneCore::ConfigItem.new(key: :group,
                                  env_name: "MOBILE_CENTER_DISTRIBUTE_GROUP",
                               description: "Distribute group",
                                  optional: false,
                                      type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Platforms.md
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
