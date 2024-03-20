# frozen_string_literal: true

module CrawlerDetect
  # since 0.1.0
  class Detector
    # @param user_agent [String] User-agent string to detect
    # @return [CrawlerDetect::Detector] instance of detector class
    def initialize(user_agent)
      @user_agent = user_agent.to_s.dup
    end

    # @return [true, false] Is User-agent a crawler?
    def is_crawler?
      @is_crawler ||= !completely_exclusion? && matches_crawler_list?
    end

    # @return [String] The detected crawler name from RAW data
    def crawler_name
      return unless is_crawler?
      @crawler_name
    end

    private

    # @private
    # @return [true, false] Is User-agent in white-list?
    def completely_exclusion?
      @user_agent.gsub!(exclusions_matcher, "")
      @user_agent.strip.empty?
    end

    # @private
    # @return [true, false] Is User-agent in black-list?
    def matches_crawler_list?
      @crawler_name = crawlers_matcher.match(@user_agent).to_s.strip
      !@crawler_name.empty?
    end

    # @private
    # @return [Regexp] White-list of User-agents
    def exclusions_matcher
      CrawlerDetect::Library.get_regexp("exclusions")
    end

    # @private
    # @return [Regexp] Black-list of User-agents
    def crawlers_matcher
      CrawlerDetect::Library.get_regexp("crawlers")
    end
  end
end
