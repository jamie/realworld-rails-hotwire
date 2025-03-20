ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"

require "buildkite/test_collector"
Buildkite::TestCollector.configure(hook: :minitest)

require "rails/test_help"

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end
end

module ActionDispatch
  class IntegrationTest
    def sign_in(user)
      post session_url, params: {
        user: {
          email: user.email,
          password: "password" # This should match the password in your fixtures
        }
      }
    end

    def sign_out
      delete session_url
    end
  end
end
