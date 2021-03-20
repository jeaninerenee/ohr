require "test_helper"

class SyllabusTaskOrganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @syllabus_task_organization = syllabus_task_organizations(:one)
  end

  test "should get index" do
    get syllabus_task_organizations_url
    assert_response :success
  end

  test "should get new" do
    get new_syllabus_task_organization_url
    assert_response :success
  end

  test "should create syllabus_task_organization" do
    assert_difference('SyllabusTaskOrganization.count') do
      post syllabus_task_organizations_url, params: { syllabus_task_organization: { created_by: @syllabus_task_organization.created_by, organization_id: @syllabus_task_organization.organization_id, organization_note: @syllabus_task_organization.organization_note, organization_order: @syllabus_task_organization.organization_order, primary_ind: @syllabus_task_organization.primary_ind, status_id: @syllabus_task_organization.status_id, syllabus_task_id: @syllabus_task_organization.syllabus_task_id, updated_by: @syllabus_task_organization.updated_by } }
    end

    assert_redirected_to syllabus_task_organization_url(SyllabusTaskOrganization.last)
  end

  test "should show syllabus_task_organization" do
    get syllabus_task_organization_url(@syllabus_task_organization)
    assert_response :success
  end

  test "should get edit" do
    get edit_syllabus_task_organization_url(@syllabus_task_organization)
    assert_response :success
  end

  test "should update syllabus_task_organization" do
    patch syllabus_task_organization_url(@syllabus_task_organization), params: { syllabus_task_organization: { created_by: @syllabus_task_organization.created_by, organization_id: @syllabus_task_organization.organization_id, organization_note: @syllabus_task_organization.organization_note, organization_order: @syllabus_task_organization.organization_order, primary_ind: @syllabus_task_organization.primary_ind, status_id: @syllabus_task_organization.status_id, syllabus_task_id: @syllabus_task_organization.syllabus_task_id, updated_by: @syllabus_task_organization.updated_by } }
    assert_redirected_to syllabus_task_organization_url(@syllabus_task_organization)
  end

  test "should destroy syllabus_task_organization" do
    assert_difference('SyllabusTaskOrganization.count', -1) do
      delete syllabus_task_organization_url(@syllabus_task_organization)
    end

    assert_redirected_to syllabus_task_organizations_url
  end
end
