require "test_helper"

class AuthLoginsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auth_login = auth_logins(:one)
  end

  test "should get index" do
    get auth_logins_url
    assert_response :success
  end

  test "should get new" do
    get new_auth_login_url
    assert_response :success
  end

  test "should create auth_login" do
    assert_difference('AuthLogin.count') do
      post auth_logins_url, params: { auth_login: { auth_user_id: @auth_login.auth_user_id, created_by: @auth_login.created_by, devise_user_id: @auth_login.devise_user_id, status_id: @auth_login.status_id, updated_by: @auth_login.updated_by } }
    end

    assert_redirected_to auth_login_url(AuthLogin.last)
  end

  test "should show auth_login" do
    get auth_login_url(@auth_login)
    assert_response :success
  end

  test "should get edit" do
    get edit_auth_login_url(@auth_login)
    assert_response :success
  end

  test "should update auth_login" do
    patch auth_login_url(@auth_login), params: { auth_login: { auth_user_id: @auth_login.auth_user_id, created_by: @auth_login.created_by, devise_user_id: @auth_login.devise_user_id, status_id: @auth_login.status_id, updated_by: @auth_login.updated_by } }
    assert_redirected_to auth_login_url(@auth_login)
  end

  test "should destroy auth_login" do
    assert_difference('AuthLogin.count', -1) do
      delete auth_login_url(@auth_login)
    end

    assert_redirected_to auth_logins_url
  end
end
