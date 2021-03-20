require "test_helper"

class AuthUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auth_user = auth_users(:one)
  end

  test "should get index" do
    get auth_users_url
    assert_response :success
  end

  test "should get new" do
    get new_auth_user_url
    assert_response :success
  end

  test "should create auth_user" do
    assert_difference('AuthUser.count') do
      post auth_users_url, params: { auth_user: { created_by: @auth_user.created_by, first_name: @auth_user.first_name, last_name: @auth_user.last_name, middle_name: @auth_user.middle_name, prefix_name: @auth_user.prefix_name, status_id: @auth_user.status_id, suffix_name: @auth_user.suffix_name, updated_by: @auth_user.updated_by, username: @auth_user.username } }
    end

    assert_redirected_to auth_user_url(AuthUser.last)
  end

  test "should show auth_user" do
    get auth_user_url(@auth_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_auth_user_url(@auth_user)
    assert_response :success
  end

  test "should update auth_user" do
    patch auth_user_url(@auth_user), params: { auth_user: { created_by: @auth_user.created_by, first_name: @auth_user.first_name, last_name: @auth_user.last_name, middle_name: @auth_user.middle_name, prefix_name: @auth_user.prefix_name, status_id: @auth_user.status_id, suffix_name: @auth_user.suffix_name, updated_by: @auth_user.updated_by, username: @auth_user.username } }
    assert_redirected_to auth_user_url(@auth_user)
  end

  test "should destroy auth_user" do
    assert_difference('AuthUser.count', -1) do
      delete auth_user_url(@auth_user)
    end

    assert_redirected_to auth_users_url
  end
end
