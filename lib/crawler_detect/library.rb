# frozen_string_literal: true

module CrawlerDetect
  # @since 0.1.0
  module Library
    DATA_CLASSES = [Library::Headers, Library::Exclusions, Library::Crawlers].freeze

    class << self
      # @param param [String] Name of raw data
      # @return [Regexp]
      def get_regexp(param)
        data = get_array(param)
        %r{#{data.join('|')}}i
      end

      # @param param [String] Name of raw data
      # @return [Array]
      def get_array(param)
        const_get("CrawlerDetect::Library::#{param.capitalize}").send(:data)
      end
    end
  end
end
