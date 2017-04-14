describe Fastlane::Actions::MobileCenterAction do
  describe '#run' do
    it 'prints a message' do
      # expect(Fastlane::UI).to receive(:message).with("The mobile_center plugin is working!")
      Fastlane::Actions::MobileCenterAction.run(api_token: ENV['MOBILE_CENTER_API_TOKEN'])
    end
  end
end
