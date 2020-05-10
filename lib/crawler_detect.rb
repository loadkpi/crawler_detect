# frozen_string_literal: true

require "oj"
require "qonfig"

require_relative "crawler_detect/config"
require_relative "crawler_detect/detector"
require_relative "crawler_detect/library/loader"
require_relative "crawler_detect/library/crawlers"
require_relative "crawler_detect/library/exclusions"
require_relative "crawler_detect/library/headers"
require_relative "crawler_detect/library"
require_relative "crawler_detect/version"
require_relative "rack/crawler_detect"

module CrawlerDetect
  class << self
    def new(user_agent)
      detector(user_agent)
    end

    def is_crawler?(user_agent)
      detector(user_agent).is_crawler?
    end

    def setup!(&config)
      @config = CrawlerDetect::Config.new(&config)
      Library::DATA_CLASSES.each(&:reload_data)
    end

    def config
      @config ||= CrawlerDetect::Config.new
    end

    private

    def detector(user_agent)
      CrawlerDetect::Detector.new(user_agent)
    end
  end
end
