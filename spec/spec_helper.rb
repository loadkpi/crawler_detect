# frozen_string_literal: true

require "bundler/setup"

require "active_support/core_ext/array/grouping"
require "active_support/core_ext/object/blank"

RSPEC_ROOT = File.dirname __FILE__

BAD_UA  = File.readlines("#{RSPEC_ROOT}/fixtures/crawlers.txt").freeze
GOOD_UA = File.readlines("#{RSPEC_ROOT}/fixtures/devices.txt").freeze
GOOD_UA_CHUNKS = GOOD_UA.in_groups(4, false).freeze

require "crawler_detect"

Dir["./spec/support/**/*.rb"].sort.each { |f| require f }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
