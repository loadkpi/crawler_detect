# frozen_string_literal: true

module CrawlerDetect
  class Detector
    def initialize(user_agent)
      @user_agent = user_agent.to_s.dup
    end

    def is_crawler?
      @is_crawler ||= begin
        !completely_exclusion? && matches_crawler_list?
      end
    end

    def crawler_name
      return unless is_crawler?
      @crawler_name
    end

    private

    def completely_exclusion?
      @user_agent.gsub!(exclusions_matcher, "")
      @user_agent.strip.length.zero?
    end

    def matches_crawler_list?
      @crawler_name = crawlers_matcher.match(@user_agent).to_s.strip
      !@crawler_name.empty?
    end

    def exclusions_matcher
      CrawlerDetect::Library.get_regexp("exclusions")
    end

    def crawlers_matcher
      CrawlerDetect::Library.get_regexp("crawlers")
    end
  end
end
