# frozen_string_literal: true

module CrawlerDetect
  module Library
    module Headers
      @@headers = Oj.load_file("lib/crawler_detect/library/raw/Headers.json").freeze
    end
  end
end
