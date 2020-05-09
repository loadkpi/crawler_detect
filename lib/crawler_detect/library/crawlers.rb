# frozen_string_literal: true

module CrawlerDetect
  module Library
    module Crawlers
      extend Loader

      CRAWLERS = load_raw("Crawlers")
    end
  end
end
