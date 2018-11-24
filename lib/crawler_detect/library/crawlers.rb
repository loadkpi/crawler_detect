# frozen_string_literal: true

module CrawlerDetect
  module Library
    module Crawlers
      @@crawlers = Oj.load_file("lib/crawler_detect/library/raw/Crawlers.json").freeze
    end
  end
end
