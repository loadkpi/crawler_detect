# frozen_string_literal: true

RSpec.describe CrawlerDetect do
  subject { described_class }

  describe ".new" do
    subject { described_class.new("something") }

    it { is_expected.to be_an_instance_of(CrawlerDetect::Detector) }
  end

  describe ".is_crawler?" do
    subject { described_class.is_crawler?("something") }

    it { is_expected.to be(true).or be(false) }
  end
end
