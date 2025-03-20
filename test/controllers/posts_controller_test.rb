require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
    @user = users(:one)
  end

  # Public actions (no login required)
  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  # Protected actions (login required)
  test "should not get new when not logged in" do
    get new_post_url
    assert_redirected_to new_session_url
  end

  test "should get new when logged in" do
    sign_in @user
    get new_post_url
    assert_response :success
  end

  test "should not create post when not logged in" do
    assert_no_difference("Post.count") do
      post posts_url, params: {post: {title: @post.title, user_id: @post.user_id}}
    end
    assert_redirected_to new_session_url
  end

  test "should create post when logged in" do
    sign_in @user
    assert_difference("Post.count") do
      post posts_url, params: {post: {title: @post.title, user_id: @post.user_id}}
    end
    assert_redirected_to post_url(Post.last)
  end

  test "should not get edit when not logged in" do
    get edit_post_url(@post)
    assert_redirected_to new_session_url
  end

  test "should get edit when logged in" do
    sign_in @user
    get edit_post_url(@post)
    assert_response :success
  end

  test "should not update post when not logged in" do
    patch post_url(@post), params: {post: {title: @post.title, user_id: @post.user_id}}
    assert_redirected_to new_session_url
  end

  test "should update post when logged in" do
    sign_in @user
    patch post_url(@post), params: {post: {title: @post.title, user_id: @post.user_id}}
    assert_redirected_to post_url(@post)
  end

  test "should not destroy post when not logged in" do
    assert_no_difference("Post.count") do
      delete post_url(@post)
    end
    assert_redirected_to new_session_url
  end

  test "should destroy post when logged in" do
    sign_in @user
    assert_difference("Post.count", -1) do
      delete post_url(@post)
    end
    assert_redirected_to posts_url
  end
end
