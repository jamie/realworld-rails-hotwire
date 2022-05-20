require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: ENV.fetch("SYSTEM_BROWSER", :headless_chrome).to_sym, screen_size: [1400, 1400]
end
