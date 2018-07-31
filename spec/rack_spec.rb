# frozen_string_literal: true

require "rack/test"

RSpec.describe Rack::CrawlerDetect do
  include Rack::Test::Methods

  def app
    app = lambda { |env| [200, { "Content-Type" => "text/plain" }, ["Hello"]] }
    Rack::CrawlerDetect.new(app)
  end

  it "extends functionality of Rack::Request" do
    stub_const("CrawlerDetect::Library::Crawlers::CRAWLERS", ["Test Bot"])

    header "User-Agent", "Test Bot 007"
    get "/"

    expect(last_request.is_crawler?).to eq(true)
    expect(last_request.crawler_name).to eq("Test Bot")
  end
end
