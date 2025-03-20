require "application_system_test_case"

class AuthenticationTest < ApplicationSystemTestCase
  test "user can sign up" do
    visit root_path
    click_on "Sign up"
    assert_current_path new_user_path

    fill_in "Username", with: "testuser"
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password123"
    click_on "Sign up"

    assert_text "You're now signed in."
    assert_current_path root_path
  end

  test "user can log in" do
    user = users(:one)
    visit root_path
    click_on "Sign in"
    assert_current_path new_session_path

    fill_in "Email", with: user.email
    fill_in "Password", with: "password123"
    click_on "Sign in"

    assert_text "You're now signed in."
    assert_current_path root_path
  end

  test "user can log out" do
    user = users(:one)
    sign_in user
    visit root_path

    click_on "Sign out"
    assert_text "You're now signed out."
    assert_current_path root_path
  end

  test "user cannot log in with invalid credentials" do
    visit root_path
    click_on "Sign in"
    assert_current_path new_session_path

    fill_in "Email", with: "wrong@example.com"
    fill_in "Password", with: "wrongpassword"
    click_on "Sign in"

    assert_text "Invalid email or password."
    assert_current_path new_session_path
  end
end
