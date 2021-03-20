require "application_system_test_case"

class OrganizationsTest < ApplicationSystemTestCase
  setup do
    @organization = organizations(:one)
  end

  test "visiting the index" do
    visit organizations_url
    assert_selector "h1", text: "Organizations"
  end

  test "creating a Organization" do
    visit organizations_url
    click_on "New Organization"

    fill_in "Auth account", with: @organization.auth_account_id
    fill_in "Created by", with: @organization.created_by
    fill_in "Organization name", with: @organization.organization_name
    fill_in "Organization note", with: @organization.organization_note
    fill_in "Organization order", with: @organization.organization_order
    fill_in "Status", with: @organization.status_id
    fill_in "Updated by", with: @organization.updated_by
    click_on "Create Organization"

    assert_text "Organization was successfully created"
    click_on "Back"
  end

  test "updating a Organization" do
    visit organizations_url
    click_on "Edit", match: :first

    fill_in "Auth account", with: @organization.auth_account_id
    fill_in "Created by", with: @organization.created_by
    fill_in "Organization name", with: @organization.organization_name
    fill_in "Organization note", with: @organization.organization_note
    fill_in "Organization order", with: @organization.organization_order
    fill_in "Status", with: @organization.status_id
    fill_in "Updated by", with: @organization.updated_by
    click_on "Update Organization"

    assert_text "Organization was successfully updated"
    click_on "Back"
  end

  test "destroying a Organization" do
    visit organizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organization was successfully destroyed"
  end
end
