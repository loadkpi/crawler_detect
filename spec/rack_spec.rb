# frozen_string_literal: true

require "rack/test"

RSpec.describe Rack::CrawlerDetect do
  include Rack::Test::Methods

  def app
    Rack::Builder.app do
      use Rack::CrawlerDetect
      run -> (_env) { [200, { "Content-Type" => "text/plain" }, ["OK"]] }
    end
  end

  before do
    allow(CrawlerDetect::Library).to receive(:get_regexp).and_call_original
    allow(CrawlerDetect::Library).to receive(:get_regexp).with("crawlers").and_return(%r{Test Bot}i)
  end

  it "extends functionality of Rack::Request" do
    header "User-Agent", "Test Bot 007"
    get "/"

    expect(last_request.is_crawler?).to eq(true)
    expect(last_request.crawler_name).to eq("Test Bot")
  end

  it "works with custom header" do
    header "From", "Test Bot 007"
    get "/"

    expect(last_request.is_crawler?).to eq(true)
    expect(last_request.crawler_name).to eq("Test Bot")
  end
end
