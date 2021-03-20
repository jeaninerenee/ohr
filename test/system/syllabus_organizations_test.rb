require "application_system_test_case"

class SyllabusOrganizationsTest < ApplicationSystemTestCase
  setup do
    @syllabus_organization = syllabus_organizations(:one)
  end

  test "visiting the index" do
    visit syllabus_organizations_url
    assert_selector "h1", text: "Syllabus Organizations"
  end

  test "creating a Syllabus organization" do
    visit syllabus_organizations_url
    click_on "New Syllabus Organization"

    fill_in "Created by", with: @syllabus_organization.created_by
    fill_in "Organization", with: @syllabus_organization.organization_id
    fill_in "Organization note", with: @syllabus_organization.organization_note
    fill_in "Organization order", with: @syllabus_organization.organization_order
    check "Primary ind" if @syllabus_organization.primary_ind
    fill_in "Status", with: @syllabus_organization.status_id
    fill_in "Syllabus", with: @syllabus_organization.syllabus_id
    fill_in "Updated by", with: @syllabus_organization.updated_by
    click_on "Create Syllabus organization"

    assert_text "Syllabus organization was successfully created"
    click_on "Back"
  end

  test "updating a Syllabus organization" do
    visit syllabus_organizations_url
    click_on "Edit", match: :first

    fill_in "Created by", with: @syllabus_organization.created_by
    fill_in "Organization", with: @syllabus_organization.organization_id
    fill_in "Organization note", with: @syllabus_organization.organization_note
    fill_in "Organization order", with: @syllabus_organization.organization_order
    check "Primary ind" if @syllabus_organization.primary_ind
    fill_in "Status", with: @syllabus_organization.status_id
    fill_in "Syllabus", with: @syllabus_organization.syllabus_id
    fill_in "Updated by", with: @syllabus_organization.updated_by
    click_on "Update Syllabus organization"

    assert_text "Syllabus organization was successfully updated"
    click_on "Back"
  end

  test "destroying a Syllabus organization" do
    visit syllabus_organizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Syllabus organization was successfully destroyed"
  end
end
