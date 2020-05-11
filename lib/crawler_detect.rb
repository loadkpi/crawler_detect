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

# @since 0.1.0
module CrawlerDetect
  class << self
    # @param user_agent [String] User-agent string to detect
    # @return [CrawlerDetect::Detector] Instance of detector class
    def new(user_agent)
      detector(user_agent)
    end

    # @param user_agent [String] User-agent string to detect
    # @return [true, false] Is User-agent a crawler?
    def is_crawler?(user_agent)
      detector(user_agent).is_crawler?
    end

    # @since 1.0.0
    # @param config [Proc]
    def setup!(&config)
      @config = CrawlerDetect::Config.new(&config)
      Library::DATA_CLASSES.each(&:reload_data)
    end

    # @since 1.0.0
    # @return [CrawlerDetect::Config] Instance of configuration class
    def config
      @config ||= CrawlerDetect::Config.new
    end

    private

    def detector(user_agent)
      CrawlerDetect::Detector.new(user_agent)
    end
  end
end
