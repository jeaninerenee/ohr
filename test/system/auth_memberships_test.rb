require "application_system_test_case"

class AuthMembershipsTest < ApplicationSystemTestCase
  setup do
    @auth_membership = auth_memberships(:one)
  end

  test "visiting the index" do
    visit auth_memberships_url
    assert_selector "h1", text: "Auth Memberships"
  end

  test "creating a Auth membership" do
    visit auth_memberships_url
    click_on "New Auth Membership"

    fill_in "Account email", with: @auth_membership.account_email
    fill_in "Account phone", with: @auth_membership.account_phone
    fill_in "Auth organization", with: @auth_membership.auth_organization_id
    fill_in "Auth user", with: @auth_membership.auth_user_id
    fill_in "Created by", with: @auth_membership.created_by
    fill_in "Role", with: @auth_membership.role_id
    fill_in "Status", with: @auth_membership.status_id
    fill_in "Updated by", with: @auth_membership.updated_by
    click_on "Create Auth membership"

    assert_text "Auth membership was successfully created"
    click_on "Back"
  end

  test "updating a Auth membership" do
    visit auth_memberships_url
    click_on "Edit", match: :first

    fill_in "Account email", with: @auth_membership.account_email
    fill_in "Account phone", with: @auth_membership.account_phone
    fill_in "Auth organization", with: @auth_membership.auth_organization_id
    fill_in "Auth user", with: @auth_membership.auth_user_id
    fill_in "Created by", with: @auth_membership.created_by
    fill_in "Role", with: @auth_membership.role_id
    fill_in "Status", with: @auth_membership.status_id
    fill_in "Updated by", with: @auth_membership.updated_by
    click_on "Update Auth membership"

    assert_text "Auth membership was successfully updated"
    click_on "Back"
  end

  test "destroying a Auth membership" do
    visit auth_memberships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Auth membership was successfully destroyed"
  end
end
