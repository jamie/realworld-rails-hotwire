require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "password is encrypted" do
    user = User.new(password: "password")
    assert_not_includes user.attributes.values, "password"
    assert user.authenticate("password")
  end
end
