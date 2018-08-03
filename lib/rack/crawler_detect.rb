# frozen_string_literal: true

module Rack
  class CrawlerDetect
    def initialize(app, options = {})
      puts 99999999
      Rack::Request::Helpers.module_eval do
        def is_crawler?
          env["rack.crawler_detect"][:is_crawler]
        end

        def crawler_name
          env["rack.crawler_detect"][:crawler_name]
        end
      end
      @app = app
    end

    def call(env)
      @env = env
      set_env_variables!
      @app.call(@env)
    end

    private

    def set_env_variables!
      return @env unless user_agent
      detector = ::CrawlerDetect::Detector.new(user_agent)
      @env["rack.crawler_detect"] = {
        is_crawler:   detector.is_crawler?,
        crawler_name: detector.crawler_name,
      }
    end

    def user_agent
      @user_agent ||= begin
        user_agent_headers.map do |header|
          @env[header]
        end.compact.join(" ")
      end
    end

    def user_agent_headers
      ::CrawlerDetect::Library.get_array("headers")
    end
  end
end
