# frozen_string_literal: true

module CrawlerDetect
  module Library
    DATA_CLASSES = [Library::Headers, Library::Exclusions, Library::Crawlers].freeze

    class << self
      def get_regexp(param)
        data = get_array(param)
        %r{#{data.join('|')}}i
      end

      def get_array(param)
        const_get("CrawlerDetect::Library::#{param.capitalize}").send(:data)
      end
    end
  end
end
