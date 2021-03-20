require "test_helper"

class TaskOrganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task_organization = task_organizations(:one)
  end

  test "should get index" do
    get task_organizations_url
    assert_response :success
  end

  test "should get new" do
    get new_task_organization_url
    assert_response :success
  end

  test "should create task_organization" do
    assert_difference('TaskOrganization.count') do
      post task_organizations_url, params: { task_organization: { created_by: @task_organization.created_by, organization_id: @task_organization.organization_id, organization_note: @task_organization.organization_note, organization_order: @task_organization.organization_order, primary_ind: @task_organization.primary_ind, status_id: @task_organization.status_id, task_id: @task_organization.task_id, updated_by: @task_organization.updated_by } }
    end

    assert_redirected_to task_organization_url(TaskOrganization.last)
  end

  test "should show task_organization" do
    get task_organization_url(@task_organization)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_organization_url(@task_organization)
    assert_response :success
  end

  test "should update task_organization" do
    patch task_organization_url(@task_organization), params: { task_organization: { created_by: @task_organization.created_by, organization_id: @task_organization.organization_id, organization_note: @task_organization.organization_note, organization_order: @task_organization.organization_order, primary_ind: @task_organization.primary_ind, status_id: @task_organization.status_id, task_id: @task_organization.task_id, updated_by: @task_organization.updated_by } }
    assert_redirected_to task_organization_url(@task_organization)
  end

  test "should destroy task_organization" do
    assert_difference('TaskOrganization.count', -1) do
      delete task_organization_url(@task_organization)
    end

    assert_redirected_to task_organizations_url
  end
end
