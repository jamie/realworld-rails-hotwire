# frozen_string_literal: true

require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get articles_url

    assert_response :success
  end

  test "should report failures to CI" do
    get "/bad"

    assert_response :success
  end
end
