# frozen_string_literal: true

module CrawlerDetect
  module Library
    class << self
      def get_regexp(param)
        data = get_array(param)
        %r[#{data.join('|')}]i
      end

      def get_array(param)
        const_get("CrawlerDetect::Library::#{param.capitalize}").class_variable_get("@@#{param.downcase}")
      end
    end
  end
end
