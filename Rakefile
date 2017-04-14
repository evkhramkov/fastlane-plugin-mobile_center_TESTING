require 'uri'
require 'net/http'
require 'bundler/gem_tasks'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

require 'rubocop/rake_task'
RuboCop::RakeTask.new(:rubocop)

api_endpoins = {
  "prod" => "https://api.mobile.azure.com"
}

swagger_path = "/preview/swagger.json"
swagger_dest = "swagger/swagger.json"

namespace :swagger do
  desc "Download swagger api specifications"
  task :download do
    puts "Downloading swagger from #{api_endpoins['prod']}"
    url = URI.parse("#{api_endpoins['prod']}#{swagger_path}")
    req = Net::HTTP.new(url.host, url.port)
    req.use_ssl = true
    res = req.get(url.path)
    open(swagger_dest, "w") { |file| file.write(res.body) }
    puts "Swagger saved to #{swagger_dest}"
  end

  desc "Generate "
  task :generate do
  end
end

task default: [:spec, :rubocop]
