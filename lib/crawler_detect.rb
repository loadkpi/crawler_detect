require "crawler_detect/detector"
require "crawler_detect/library"
require "crawler_detect/library/crawlers"
require "crawler_detect/library/exclusions"
require "crawler_detect/library/headers"
require "crawler_detect/version"

module CrawlerDetect
  class << self
    def new(user_agent)
      CrawlerDetect::Detector.new(user_agent)
    end

    def is_crawler?(user_agent)
      new(user_agent).is_crawler?
    end
  end
end
