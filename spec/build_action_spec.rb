describe Fastlane::Actions::BuildAction do
  describe '#run' do
    it 'builds' do
      Fastlane::Actions::BuildAction.run(
        api_token: ENV['MOBILE_CENTER_API_TOKEN'],
        branch: ENV['MOBILE_CENTER_BRANCH'],
        app_owner: ENV['MOBILE_CENTER_APP_OWNER'],
        app_name: ENV['MOBILE_CENTER_APP_NAME']
      )
    end
  end
end
