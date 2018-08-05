# frozen_string_literal: true

RSpec.describe CrawlerDetect::Detector do
  subject { described_class.new(user_agent).is_crawler? }

  context "white list specs files" do
    it "test all devices" do
      specs_count = Dir.glob("#{RSPEC_ROOT}/crawler_detect/detector_devices/*.rb").count
      expect(GOOD_UA_CHUNKS.count).to eq(specs_count)
    end
  end

  context "black list" do
    BAD_UA.each do |ua|
      describe "#{ua}" do
        let(:user_agent) { ua }

        it { is_expected.to be(true) }
      end
    end
  end
end
