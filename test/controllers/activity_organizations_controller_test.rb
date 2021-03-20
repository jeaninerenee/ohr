require "test_helper"

class ActivityOrganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_organization = activity_organizations(:one)
  end

  test "should get index" do
    get activity_organizations_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_organization_url
    assert_response :success
  end

  test "should create activity_organization" do
    assert_difference('ActivityOrganization.count') do
      post activity_organizations_url, params: { activity_organization: { activity_id: @activity_organization.activity_id, created_by: @activity_organization.created_by, organization_id: @activity_organization.organization_id, organization_note: @activity_organization.organization_note, organization_order: @activity_organization.organization_order, status_id: @activity_organization.status_id, updated_by: @activity_organization.updated_by } }
    end

    assert_redirected_to activity_organization_url(ActivityOrganization.last)
  end

  test "should show activity_organization" do
    get activity_organization_url(@activity_organization)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_organization_url(@activity_organization)
    assert_response :success
  end

  test "should update activity_organization" do
    patch activity_organization_url(@activity_organization), params: { activity_organization: { activity_id: @activity_organization.activity_id, created_by: @activity_organization.created_by, organization_id: @activity_organization.organization_id, organization_note: @activity_organization.organization_note, organization_order: @activity_organization.organization_order, status_id: @activity_organization.status_id, updated_by: @activity_organization.updated_by } }
    assert_redirected_to activity_organization_url(@activity_organization)
  end

  test "should destroy activity_organization" do
    assert_difference('ActivityOrganization.count', -1) do
      delete activity_organization_url(@activity_organization)
    end

    assert_redirected_to activity_organizations_url
  end
end
