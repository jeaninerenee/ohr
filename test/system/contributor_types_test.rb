require "application_system_test_case"

class ContributorTypesTest < ApplicationSystemTestCase
  setup do
    @contributor_type = contributor_types(:one)
  end

  test "visiting the index" do
    visit contributor_types_url
    assert_selector "h1", text: "Contributor Types"
  end

  test "creating a Contributor type" do
    visit contributor_types_url
    click_on "New Contributor Type"

    fill_in "Auth account", with: @contributor_type.auth_account_id
    fill_in "Contributor type", with: @contributor_type.contributor_type
    fill_in "Contributor type order", with: @contributor_type.contributor_type_order
    fill_in "Created by", with: @contributor_type.created_by
    check "Default ind" if @contributor_type.default_ind
    fill_in "Status", with: @contributor_type.status_id
    fill_in "Updated by", with: @contributor_type.updated_by
    click_on "Create Contributor type"

    assert_text "Contributor type was successfully created"
    click_on "Back"
  end

  test "updating a Contributor type" do
    visit contributor_types_url
    click_on "Edit", match: :first

    fill_in "Auth account", with: @contributor_type.auth_account_id
    fill_in "Contributor type", with: @contributor_type.contributor_type
    fill_in "Contributor type order", with: @contributor_type.contributor_type_order
    fill_in "Created by", with: @contributor_type.created_by
    check "Default ind" if @contributor_type.default_ind
    fill_in "Status", with: @contributor_type.status_id
    fill_in "Updated by", with: @contributor_type.updated_by
    click_on "Update Contributor type"

    assert_text "Contributor type was successfully updated"
    click_on "Back"
  end

  test "destroying a Contributor type" do
    visit contributor_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contributor type was successfully destroyed"
  end
end
