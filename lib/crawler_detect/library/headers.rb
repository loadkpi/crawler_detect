# frozen_string_literal: true

module CrawlerDetect
  module Library
    module Headers
      extend Loader

      HEADERS = load_raw("Headers")
    end
  end
end
