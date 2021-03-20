require "test_helper"

class AuthOrganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auth_organization = auth_organizations(:one)
  end

  test "should get index" do
    get auth_organizations_url
    assert_response :success
  end

  test "should get new" do
    get new_auth_organization_url
    assert_response :success
  end

  test "should create auth_organization" do
    assert_difference('AuthOrganization.count') do
      post auth_organizations_url, params: { auth_organization: { auth_account_id: @auth_organization.auth_account_id, created_by: @auth_organization.created_by, organization_name: @auth_organization.organization_name, role_id: @auth_organization.role_id, status_id: @auth_organization.status_id, updated_by: @auth_organization.updated_by } }
    end

    assert_redirected_to auth_organization_url(AuthOrganization.last)
  end

  test "should show auth_organization" do
    get auth_organization_url(@auth_organization)
    assert_response :success
  end

  test "should get edit" do
    get edit_auth_organization_url(@auth_organization)
    assert_response :success
  end

  test "should update auth_organization" do
    patch auth_organization_url(@auth_organization), params: { auth_organization: { auth_account_id: @auth_organization.auth_account_id, created_by: @auth_organization.created_by, organization_name: @auth_organization.organization_name, role_id: @auth_organization.role_id, status_id: @auth_organization.status_id, updated_by: @auth_organization.updated_by } }
    assert_redirected_to auth_organization_url(@auth_organization)
  end

  test "should destroy auth_organization" do
    assert_difference('AuthOrganization.count', -1) do
      delete auth_organization_url(@auth_organization)
    end

    assert_redirected_to auth_organizations_url
  end
end
