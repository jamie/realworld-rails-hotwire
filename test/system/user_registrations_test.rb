require "application_system_test_case"

class UserRegistrationsTest < ApplicationSystemTestCase
  test "signs up" do
    visit root_url
    click_on "Sign up"

    within ".auth-page" do
      fill_in :user_username, with: "charlie"
      fill_in :user_email, with: "charlie@example.com"
      fill_in :user_password, with: "passwordA1"
      click_on "Sign up"
    end

    assert_selector "h1", text: "conduit"
    assert_selector "a", text: "Sign out" # Proxy to confirm logged in as user
  end
end
