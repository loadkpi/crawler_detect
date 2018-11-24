# frozen_string_literal: true

module CrawlerDetect
  module Library
    module Exclusions
      @@exclusions = Oj.load_file("lib/crawler_detect/library/raw/Exclusions.json").freeze
    end
  end
end
