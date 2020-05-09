# frozen_string_literal: true

require "oj"

require "crawler_detect/detector"
require "crawler_detect/library"
require "crawler_detect/library/loader"
require "crawler_detect/library/crawlers"
require "crawler_detect/library/exclusions"
require "crawler_detect/library/headers"
require "crawler_detect/version"

require "rack/crawler_detect"

module CrawlerDetect
  class << self
    def new(user_agent)
      detector(user_agent)
    end

    def is_crawler?(user_agent)
      detector(user_agent).is_crawler?
    end

    private

    def detector(user_agent)
      CrawlerDetect::Detector.new(user_agent)
    end
  end
end
