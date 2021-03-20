require "test_helper"

class SyllabusOrganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @syllabus_organization = syllabus_organizations(:one)
  end

  test "should get index" do
    get syllabus_organizations_url
    assert_response :success
  end

  test "should get new" do
    get new_syllabus_organization_url
    assert_response :success
  end

  test "should create syllabus_organization" do
    assert_difference('SyllabusOrganization.count') do
      post syllabus_organizations_url, params: { syllabus_organization: { created_by: @syllabus_organization.created_by, organization_id: @syllabus_organization.organization_id, organization_note: @syllabus_organization.organization_note, organization_order: @syllabus_organization.organization_order, primary_ind: @syllabus_organization.primary_ind, status_id: @syllabus_organization.status_id, syllabus_id: @syllabus_organization.syllabus_id, updated_by: @syllabus_organization.updated_by } }
    end

    assert_redirected_to syllabus_organization_url(SyllabusOrganization.last)
  end

  test "should show syllabus_organization" do
    get syllabus_organization_url(@syllabus_organization)
    assert_response :success
  end

  test "should get edit" do
    get edit_syllabus_organization_url(@syllabus_organization)
    assert_response :success
  end

  test "should update syllabus_organization" do
    patch syllabus_organization_url(@syllabus_organization), params: { syllabus_organization: { created_by: @syllabus_organization.created_by, organization_id: @syllabus_organization.organization_id, organization_note: @syllabus_organization.organization_note, organization_order: @syllabus_organization.organization_order, primary_ind: @syllabus_organization.primary_ind, status_id: @syllabus_organization.status_id, syllabus_id: @syllabus_organization.syllabus_id, updated_by: @syllabus_organization.updated_by } }
    assert_redirected_to syllabus_organization_url(@syllabus_organization)
  end

  test "should destroy syllabus_organization" do
    assert_difference('SyllabusOrganization.count', -1) do
      delete syllabus_organization_url(@syllabus_organization)
    end

    assert_redirected_to syllabus_organizations_url
  end
end
