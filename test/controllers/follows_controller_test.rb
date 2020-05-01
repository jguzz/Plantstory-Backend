require 'test_helper'

class FollowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @follow = follows(:one)
  end

  test "should get index" do
    get follows_url, as: :json
    assert_response :success
  end

  test "should create follow" do
    assert_difference('Follow.count') do
      post follows_url, params: { follow: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show follow" do
    get follow_url(@follow), as: :json
    assert_response :success
  end

  test "should update follow" do
    patch follow_url(@follow), params: { follow: {  } }, as: :json
    assert_response 200
  end

  test "should destroy follow" do
    assert_difference('Follow.count', -1) do
      delete follow_url(@follow), as: :json
    end

    assert_response 204
  end
end
