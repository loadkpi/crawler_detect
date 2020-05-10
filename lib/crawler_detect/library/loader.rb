# frozen_string_literal: true

module CrawlerDetect
  module Library
    module Loader
      def load_raw(path)
        ::Oj.load_file(path)
      end

      def reload_data
        remove_instance_variable(:@data) if instance_variable_defined?(:@data)
      end
    end
  end
end
