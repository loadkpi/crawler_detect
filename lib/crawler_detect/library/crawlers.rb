# frozen_string_literal: true

module CrawlerDetect
  module Library
    module Crawlers
      extend Loader

      def self.data
        @data ||= load_raw(CrawlerDetect.config.settings.raw_crawlers_path).freeze
      end
    end
  end
end
