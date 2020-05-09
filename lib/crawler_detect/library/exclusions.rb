# frozen_string_literal: true

module CrawlerDetect
  module Library
    module Exclusions
      extend Loader

      EXCLUSIONS = load_raw("Exclusions")
    end
  end
end
