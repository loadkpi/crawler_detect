# frozen_string_literal: true

GOOD_UA = File.readlines("#{RSPEC_ROOT}/fixtures/devices.txt").freeze
BAD_UA  = File.readlines("#{RSPEC_ROOT}/fixtures/crawlers.txt").freeze

RSpec.describe CrawlerDetect::Detector do
  subject { described_class.new(user_agent).is_crawler? }

  context "white list" do
    GOOD_UA.each do |ua|
      describe "#{ua}" do
        let(:user_agent) { ua }

        it { is_expected.to be(false) }
      end
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
