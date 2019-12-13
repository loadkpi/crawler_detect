# frozen_string_literal: true

require "rack/test"

RSpec.describe Rack::CrawlerDetect do
  include Rack::Test::Methods

  def app
    Rack::Builder.app do
      use Rack::CrawlerDetect
      run lambda { |_env| [200, { "Content-Type" => "text/plain" }, ["OK"]] }
    end
  end

  it "extends functionality of Rack::Request" do
    stub_const("CrawlerDetect::Library::Crawlers::CRAWLERS", ["Test Bot"])

    header "User-Agent", "Test Bot 007"
    get "/"

    expect(last_request.is_crawler?).to eq(true)
    expect(last_request.crawler_name).to eq("Test Bot")
  end

  it "works with custom header" do
    stub_const("CrawlerDetect::Library::Crawlers::CRAWLERS", ["Test Bot"])

    header "From", "Test Bot 007"
    get "/"

    expect(last_request.is_crawler?).to eq(true)
    expect(last_request.crawler_name).to eq("Test Bot")
  end

  it "should be thread safe" do
     instance = described_class.new(app)
     instance.call({ "test": true })
     expect(instance.instance_variable_get(:@env)).to be_nil
  end

end
