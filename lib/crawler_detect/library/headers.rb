# frozen_string_literal: true

module CrawlerDetect
  module Library
    # @since 0.1.0
    module Headers
      extend Loader

      def self.data
        @data ||= load_raw(CrawlerDetect.config.settings.raw_headers_path).freeze
      end
    end
  end
end
