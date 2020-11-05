# frozen_string_literal: true

module Rack
  # Rack-based interface to detect crawlers
  #
  # @since 0.1.0
  class CrawlerDetect
    def initialize(app, options = {})
      Rack::Request::Helpers.module_eval do
        def is_crawler?
          !!(env["rack.crawler_detect"] && env["rack.crawler_detect"][:is_crawler])
        end

        def crawler_name
          env["rack.crawler_detect"] && env["rack.crawler_detect"][:crawler_name]
        end
      end
      @app = app
    end

    def call(env)
      set_env_variables!(env)
      @app.call(env)
    end

    private

    def set_env_variables!(env)
      ua = user_agent(env)
      return unless ua
      detector = ::CrawlerDetect::Detector.new(ua)
      env["rack.crawler_detect"] = {
        is_crawler:   detector.is_crawler?,
        crawler_name: detector.crawler_name
      }
    end

    def user_agent(env)
      user_agent_headers.map do |header|
        env[header]
      end.compact.join(" ")
    end

    def user_agent_headers
      ::CrawlerDetect::Library.get_array("headers")
    end
  end
end
