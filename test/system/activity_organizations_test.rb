require "application_system_test_case"

class ActivityOrganizationsTest < ApplicationSystemTestCase
  setup do
    @activity_organization = activity_organizations(:one)
  end

  test "visiting the index" do
    visit activity_organizations_url
    assert_selector "h1", text: "Activity Organizations"
  end

  test "creating a Activity organization" do
    visit activity_organizations_url
    click_on "New Activity Organization"

    fill_in "Activity", with: @activity_organization.activity_id
    fill_in "Created by", with: @activity_organization.created_by
    fill_in "Organization", with: @activity_organization.organization_id
    fill_in "Organization note", with: @activity_organization.organization_note
    fill_in "Organization order", with: @activity_organization.organization_order
    fill_in "Status", with: @activity_organization.status_id
    fill_in "Updated by", with: @activity_organization.updated_by
    click_on "Create Activity organization"

    assert_text "Activity organization was successfully created"
    click_on "Back"
  end

  test "updating a Activity organization" do
    visit activity_organizations_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @activity_organization.activity_id
    fill_in "Created by", with: @activity_organization.created_by
    fill_in "Organization", with: @activity_organization.organization_id
    fill_in "Organization note", with: @activity_organization.organization_note
    fill_in "Organization order", with: @activity_organization.organization_order
    fill_in "Status", with: @activity_organization.status_id
    fill_in "Updated by", with: @activity_organization.updated_by
    click_on "Update Activity organization"

    assert_text "Activity organization was successfully updated"
    click_on "Back"
  end

  test "destroying a Activity organization" do
    visit activity_organizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Activity organization was successfully destroyed"
  end
end
