# frozen_string_literal: true

module CrawlerDetect
  # @since 0.1.0
  module Library
    DATA_CLASSES = [Library::Headers, Library::Exclusions, Library::Crawlers].freeze

    @regexp_cache = {}

    class << self
      # @param param [String] Name of raw data
      # @return [Regexp]
      def get_regexp(param)
        @regexp_cache[param] ||= begin
          data = get_array(param)
          %r{#{data.join('|')}}i
        end
      end

      # @param param [String] Name of raw data
      # @return [Array]
      def get_array(param)
        const_get("CrawlerDetect::Library::#{param.capitalize}").send(:data)
      end

      # @return [void]
      def reset_cache
        DATA_CLASSES.each(&:reload_data)
        @regexp_cache = {}
      end
    end
  end
end
