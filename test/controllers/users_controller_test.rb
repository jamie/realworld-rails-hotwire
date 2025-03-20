require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: {
        user: {
          username: "testuser",
          email: "test@example.com",
          password: "password123"
        }
      }
    end

    assert_redirected_to root_url
    assert_equal "You're now signed in.", flash[:notice]
  end

  test "should not create user with invalid params" do
    assert_no_difference("User.count") do
      post users_url, params: {
        user: {
          username: "",
          email: "invalid-email",
          password: ""
        }
      }
    end

    assert_no_redirect
  end

  # test "the truth" do
  #   assert true
  # end
end
