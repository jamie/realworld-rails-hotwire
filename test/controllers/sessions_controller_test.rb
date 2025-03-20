require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_session_url
    assert_response :success
  end

  test "should create session with valid credentials" do
    user = users(:one)
    post session_url, params: {
      user: {
        email: user.email,
        password: "password"
      }
    }

    assert_redirected_to root_url
    assert_equal "You're now signed in.", flash[:notice]
  end

  test "should not create session with invalid credentials" do
    post session_url, params: {
      user: {
        email: "wrong@example.com",
        password: "wrongpassword"
      }
    }

    assert_response :unprocessable_entity
    assert_equal "Invalid email or password.", flash[:alert]
  end

  test "should destroy session" do
    user = users(:one)
    sign_in user
    delete session_url

    assert_redirected_to root_url
    assert_equal "You're now signed out.", flash[:notice]
  end
end
