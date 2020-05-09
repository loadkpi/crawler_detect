# frozen_string_literal: true

module CrawlerDetect
  module Library
    module Loader
      def load_raw(name)
        ::Oj.load_file(
          File.join(File.dirname(File.expand_path(__FILE__)), "raw/#{name}.json")
        )
      end
    end
  end
end
