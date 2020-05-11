# frozen_string_literal: true

RSpec.describe CrawlerDetect do
  describe ".new" do
    subject { described_class.new("something") }

    it { is_expected.to be_an_instance_of(CrawlerDetect::Detector) }
  end

  describe ".is_crawler?" do
    subject { described_class.is_crawler?(user_agent) }

    let(:user_agent) { "something" }

    it { is_expected.to be(true).or be(false) }

    context "empty header" do
      let(:user_agent) { nil }

      it { is_expected.to be(false) }
    end
  end

  describe ".config" do
    subject { described_class.config }

    it { is_expected.to be_an_instance_of(CrawlerDetect::Config) }

    context "libraries" do
      it "have data from raw" do
        expect(CrawlerDetect::Library::Crawlers.data).not_to be blank?
        expect(CrawlerDetect::Library::Exclusions.data).not_to be blank?
        expect(CrawlerDetect::Library::Headers.data).not_to be blank?
      end
    end
  end

  describe ".setup!" do
    let(:raw_crawlers_path)    { raw_path("Crawlers.json") }
    let(:raw_exclusions_path)  { raw_path("Exclusions.json") }
    let(:raw_headers_path)     { raw_path("Headers.json") }

    let(:settings) { described_class.config.settings }

    def raw_path(file_name)
      File.expand_path("fixtures/raw/#{file_name}", __dir__)
    end

    def restore_settings
      described_class.setup!
    end

    before do
      described_class.setup! do |config|
        config.raw_crawlers_path   = raw_crawlers_path
        config.raw_exclusions_path = raw_exclusions_path
        config.raw_headers_path    = raw_headers_path
      end
    end

    after(:context) do
      restore_settings
    end

    it "makes expected config" do
      expect(settings.raw_crawlers_path).to   eq(raw_crawlers_path)
      expect(settings.raw_exclusions_path).to eq(raw_exclusions_path)
      expect(settings.raw_headers_path).to    eq(raw_headers_path)
    end

    context "libraries" do
      it "have expected data" do
        expect(CrawlerDetect::Library::Headers.data).to eq(["HTTP_USER_AGENT"])

        expect(CrawlerDetect::Library::Crawlers.data.size).to   eq(2)
        expect(CrawlerDetect::Library::Exclusions.data.size).to eq(0)
      end
    end
  end
end
