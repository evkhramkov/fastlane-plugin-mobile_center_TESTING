describe Fastlane::Actions::BuildAction do
  describe '#run' do
    it 'builds' do
      Fastlane::Actions::BuildAction.run(api_token: ENV['MOBILE_CENTER_API_TOKEN'], app: ENV['MOBILE_CENTER_APP'])
    end
  end
end
