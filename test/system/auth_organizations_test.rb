require "application_system_test_case"

class AuthOrganizationsTest < ApplicationSystemTestCase
  setup do
    @auth_organization = auth_organizations(:one)
  end

  test "visiting the index" do
    visit auth_organizations_url
    assert_selector "h1", text: "Auth Organizations"
  end

  test "creating a Auth organization" do
    visit auth_organizations_url
    click_on "New Auth Organization"

    fill_in "Auth account", with: @auth_organization.auth_account_id
    fill_in "Created by", with: @auth_organization.created_by
    fill_in "Organization name", with: @auth_organization.organization_name
    fill_in "Role", with: @auth_organization.role_id
    fill_in "Status", with: @auth_organization.status_id
    fill_in "Updated by", with: @auth_organization.updated_by
    click_on "Create Auth organization"

    assert_text "Auth organization was successfully created"
    click_on "Back"
  end

  test "updating a Auth organization" do
    visit auth_organizations_url
    click_on "Edit", match: :first

    fill_in "Auth account", with: @auth_organization.auth_account_id
    fill_in "Created by", with: @auth_organization.created_by
    fill_in "Organization name", with: @auth_organization.organization_name
    fill_in "Role", with: @auth_organization.role_id
    fill_in "Status", with: @auth_organization.status_id
    fill_in "Updated by", with: @auth_organization.updated_by
    click_on "Update Auth organization"

    assert_text "Auth organization was successfully updated"
    click_on "Back"
  end

  test "destroying a Auth organization" do
    visit auth_organizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Auth organization was successfully destroyed"
  end
end
