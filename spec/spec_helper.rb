# frozen_string_literal: true

require "bundler/setup"
require "pry-meta"

RSPEC_ROOT = File.dirname __FILE__

BAD_UA  = File.readlines("#{RSPEC_ROOT}/fixtures/crawlers.txt").freeze
GOOD_UA = File.readlines("#{RSPEC_ROOT}/fixtures/devices.txt").freeze
GOOD_UA_CHUNKS = GOOD_UA.each_slice((GOOD_UA.size / 2.0).round).to_a.to_a.freeze

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
