# frozen_string_literal: true

module CrawlerDetect
  module Library
    def self.get(param)
      const_name = "CrawlerDetect::Library::#{param.capitalize}::#{param.upcase}"
      data = const_get(const_name)
      %r[#{data.join('|')}]i
    end
  end
end
