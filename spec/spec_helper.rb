require "bundler/setup"
require "electrum_rpc_json_client"
require "pry-byebug"
require "active_support/core_ext/hash/indifferent_access"
require "active_support/core_ext/object/blank"
require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  config.hook_into :webmock
  config.configure_rspec_metadata!
end

CONFIG = {
  host: "http://electrum:electrumpass@localhost:7000",
}

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
