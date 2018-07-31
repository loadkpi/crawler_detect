# frozen_string_literal: true

module CrawlerDetect
  module Library
    class << self
      def get_regexp(param)
        data = get_array(param)
        %r[#{data.join('|')}]i
      end

      def get_array(param)
        const_name = "CrawlerDetect::Library::#{param.capitalize}::#{param.upcase}"
        const_get(const_name)
      end
    end
  end
end
