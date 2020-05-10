# frozen_string_literal: true

module CrawlerDetect
  module Library
    module Exclusions
      extend Loader

      def self.data
        @data ||= load_raw(CrawlerDetect.config.settings.raw_exclusions_path).freeze
      end
    end
  end
end
