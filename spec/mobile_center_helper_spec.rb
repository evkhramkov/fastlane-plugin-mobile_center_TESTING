describe Fastlane::Helper::MobileCenterHelper do
  describe '#create_mobile_center_client' do
    it 'creates new client' do
      Fastlane::Helper::MobileCenterHelper.create_mobile_center_client(ENV["TOKEN"])
    end
  end
end
