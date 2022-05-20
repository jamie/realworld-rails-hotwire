require "application_system_test_case"

class UserRegistrationsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url

    click_on "Sign up"

    assert_selector "h1", text: "Sign up"
  end
end
