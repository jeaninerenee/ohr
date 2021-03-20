require "application_system_test_case"

class TaskOrganizationsTest < ApplicationSystemTestCase
  setup do
    @task_organization = task_organizations(:one)
  end

  test "visiting the index" do
    visit task_organizations_url
    assert_selector "h1", text: "Task Organizations"
  end

  test "creating a Task organization" do
    visit task_organizations_url
    click_on "New Task Organization"

    fill_in "Created by", with: @task_organization.created_by
    fill_in "Organization", with: @task_organization.organization_id
    fill_in "Organization note", with: @task_organization.organization_note
    fill_in "Organization order", with: @task_organization.organization_order
    check "Primary ind" if @task_organization.primary_ind
    fill_in "Status", with: @task_organization.status_id
    fill_in "Task", with: @task_organization.task_id
    fill_in "Updated by", with: @task_organization.updated_by
    click_on "Create Task organization"

    assert_text "Task organization was successfully created"
    click_on "Back"
  end

  test "updating a Task organization" do
    visit task_organizations_url
    click_on "Edit", match: :first

    fill_in "Created by", with: @task_organization.created_by
    fill_in "Organization", with: @task_organization.organization_id
    fill_in "Organization note", with: @task_organization.organization_note
    fill_in "Organization order", with: @task_organization.organization_order
    check "Primary ind" if @task_organization.primary_ind
    fill_in "Status", with: @task_organization.status_id
    fill_in "Task", with: @task_organization.task_id
    fill_in "Updated by", with: @task_organization.updated_by
    click_on "Update Task organization"

    assert_text "Task organization was successfully updated"
    click_on "Back"
  end

  test "destroying a Task organization" do
    visit task_organizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task organization was successfully destroyed"
  end
end
