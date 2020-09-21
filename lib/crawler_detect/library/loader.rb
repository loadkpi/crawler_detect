# frozen_string_literal: true

module CrawlerDetect
  module Library
    # since 1.0.0
    module Loader
      # Load JSON raw file
      def load_raw(path)
        JSON.parse(File.read(path))
      end

      # Remove cached raw data
      def reload_data
        remove_instance_variable(:@data) if instance_variable_defined?(:@data)
      end
    end
  end
end
