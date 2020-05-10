# frozen_string_literal: true

module CrawlerDetect
  class Config < ::Qonfig::DataSet
    CUR_PATH = File.dirname(File.expand_path(__FILE__)).freeze
    RAW_PATH = File.join(CUR_PATH, "library/raw").freeze

    RAW_CRAWLERS_PATH   = File.join(RAW_PATH, "Crawlers.json").freeze
    RAW_EXCLUSIONS_PATH = File.join(RAW_PATH, "Exclusions.json").freeze
    RAW_HEADERS_PATH    = File.join(RAW_PATH, "Headers.json").freeze

    setting :raw_crawlers_path,   RAW_CRAWLERS_PATH
    setting :raw_exclusions_path, RAW_EXCLUSIONS_PATH
    setting :raw_headers_path,    RAW_HEADERS_PATH

    validate :raw_crawlers_path,   :string, strict: true
    validate :raw_exclusions_path, :string, strict: true
    validate :raw_headers_path,    :string, strict: true
  end
end
