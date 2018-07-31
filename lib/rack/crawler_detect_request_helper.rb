# frozen_string_literal: true

module Rack
  module CrawlerDetectRequestHelper
    def is_crawler?
      env["rack.crawler_detect"][:is_crawler]
    end

    def crawler_name
      env["rack.crawler_detect"][:crawler_name]
    end
  end
end
