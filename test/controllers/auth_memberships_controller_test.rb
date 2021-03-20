require "test_helper"

class AuthMembershipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auth_membership = auth_memberships(:one)
  end

  test "should get index" do
    get auth_memberships_url
    assert_response :success
  end

  test "should get new" do
    get new_auth_membership_url
    assert_response :success
  end

  test "should create auth_membership" do
    assert_difference('AuthMembership.count') do
      post auth_memberships_url, params: { auth_membership: { account_email: @auth_membership.account_email, account_phone: @auth_membership.account_phone, auth_organization_id: @auth_membership.auth_organization_id, auth_user_id: @auth_membership.auth_user_id, created_by: @auth_membership.created_by, role_id: @auth_membership.role_id, status_id: @auth_membership.status_id, updated_by: @auth_membership.updated_by } }
    end

    assert_redirected_to auth_membership_url(AuthMembership.last)
  end

  test "should show auth_membership" do
    get auth_membership_url(@auth_membership)
    assert_response :success
  end

  test "should get edit" do
    get edit_auth_membership_url(@auth_membership)
    assert_response :success
  end

  test "should update auth_membership" do
    patch auth_membership_url(@auth_membership), params: { auth_membership: { account_email: @auth_membership.account_email, account_phone: @auth_membership.account_phone, auth_organization_id: @auth_membership.auth_organization_id, auth_user_id: @auth_membership.auth_user_id, created_by: @auth_membership.created_by, role_id: @auth_membership.role_id, status_id: @auth_membership.status_id, updated_by: @auth_membership.updated_by } }
    assert_redirected_to auth_membership_url(@auth_membership)
  end

  test "should destroy auth_membership" do
    assert_difference('AuthMembership.count', -1) do
      delete auth_membership_url(@auth_membership)
    end

    assert_redirected_to auth_memberships_url
  end
end
