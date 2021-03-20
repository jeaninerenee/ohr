require "test_helper"

class AuthAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auth_account = auth_accounts(:one)
  end

  test "should get index" do
    get auth_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_auth_account_url
    assert_response :success
  end

  test "should create auth_account" do
    assert_difference('AuthAccount.count') do
      post auth_accounts_url, params: { auth_account: { account_name: @auth_account.account_name, created_by: @auth_account.created_by, plan_id: @auth_account.plan_id, status_id: @auth_account.status_id, updated_by: @auth_account.updated_by } }
    end

    assert_redirected_to auth_account_url(AuthAccount.last)
  end

  test "should show auth_account" do
    get auth_account_url(@auth_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_auth_account_url(@auth_account)
    assert_response :success
  end

  test "should update auth_account" do
    patch auth_account_url(@auth_account), params: { auth_account: { account_name: @auth_account.account_name, created_by: @auth_account.created_by, plan_id: @auth_account.plan_id, status_id: @auth_account.status_id, updated_by: @auth_account.updated_by } }
    assert_redirected_to auth_account_url(@auth_account)
  end

  test "should destroy auth_account" do
    assert_difference('AuthAccount.count', -1) do
      delete auth_account_url(@auth_account)
    end

    assert_redirected_to auth_accounts_url
  end
end
