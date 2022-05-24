require "application_system_test_case"

class UserSessionsTest < ApplicationSystemTestCase
  def sign_in(user)
    visit new_session_url

    within ".auth-page" do
      fill_in :user_email, with: user.email
      fill_in :user_password, with: "password"
      click_on "Sign in"
    end
  end

  test "signs in" do
    visit root_url
    click_on "Sign in"

    within ".auth-page" do
      fill_in :user_email, with: users(:one).email
      fill_in :user_password, with: "password"
      click_on "Sign in"
    end

    assert_selector "h1", text: "conduit"
    assert_selector "a", text: "Sign out" # Proxy to confirm logged in as user
  end

  test "signs out" do
    visit new_session_url

    within ".auth-page" do
      fill_in :user_email, with: users(:one).email
      fill_in :user_password, with: "password"
      click_on "Sign in"
    end

    assert_selector "body.posts.index" # waits for page to load, ewwwww
    click_on "Sign out"

    assert_selector "a", text: "Sign in" # Proxy to confirm logged out
  end
end
