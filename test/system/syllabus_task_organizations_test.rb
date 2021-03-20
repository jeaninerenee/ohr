require "application_system_test_case"

class SyllabusTaskOrganizationsTest < ApplicationSystemTestCase
  setup do
    @syllabus_task_organization = syllabus_task_organizations(:one)
  end

  test "visiting the index" do
    visit syllabus_task_organizations_url
    assert_selector "h1", text: "Syllabus Task Organizations"
  end

  test "creating a Syllabus task organization" do
    visit syllabus_task_organizations_url
    click_on "New Syllabus Task Organization"

    fill_in "Created by", with: @syllabus_task_organization.created_by
    fill_in "Organization", with: @syllabus_task_organization.organization_id
    fill_in "Organization note", with: @syllabus_task_organization.organization_note
    fill_in "Organization order", with: @syllabus_task_organization.organization_order
    check "Primary ind" if @syllabus_task_organization.primary_ind
    fill_in "Status", with: @syllabus_task_organization.status_id
    fill_in "Syllabus task", with: @syllabus_task_organization.syllabus_task_id
    fill_in "Updated by", with: @syllabus_task_organization.updated_by
    click_on "Create Syllabus task organization"

    assert_text "Syllabus task organization was successfully created"
    click_on "Back"
  end

  test "updating a Syllabus task organization" do
    visit syllabus_task_organizations_url
    click_on "Edit", match: :first

    fill_in "Created by", with: @syllabus_task_organization.created_by
    fill_in "Organization", with: @syllabus_task_organization.organization_id
    fill_in "Organization note", with: @syllabus_task_organization.organization_note
    fill_in "Organization order", with: @syllabus_task_organization.organization_order
    check "Primary ind" if @syllabus_task_organization.primary_ind
    fill_in "Status", with: @syllabus_task_organization.status_id
    fill_in "Syllabus task", with: @syllabus_task_organization.syllabus_task_id
    fill_in "Updated by", with: @syllabus_task_organization.updated_by
    click_on "Update Syllabus task organization"

    assert_text "Syllabus task organization was successfully updated"
    click_on "Back"
  end

  test "destroying a Syllabus task organization" do
    visit syllabus_task_organizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Syllabus task organization was successfully destroyed"
  end
end
