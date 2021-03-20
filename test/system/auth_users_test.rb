require "application_system_test_case"

class AuthUsersTest < ApplicationSystemTestCase
  setup do
    @auth_user = auth_users(:one)
  end

  test "visiting the index" do
    visit auth_users_url
    assert_selector "h1", text: "Auth Users"
  end

  test "creating a Auth user" do
    visit auth_users_url
    click_on "New Auth User"

    fill_in "Created by", with: @auth_user.created_by
    fill_in "First name", with: @auth_user.first_name
    fill_in "Last name", with: @auth_user.last_name
    fill_in "Middle name", with: @auth_user.middle_name
    fill_in "Prefix name", with: @auth_user.prefix_name
    fill_in "Status", with: @auth_user.status_id
    fill_in "Suffix name", with: @auth_user.suffix_name
    fill_in "Updated by", with: @auth_user.updated_by
    fill_in "Username", with: @auth_user.username
    click_on "Create Auth user"

    assert_text "Auth user was successfully created"
    click_on "Back"
  end

  test "updating a Auth user" do
    visit auth_users_url
    click_on "Edit", match: :first

    fill_in "Created by", with: @auth_user.created_by
    fill_in "First name", with: @auth_user.first_name
    fill_in "Last name", with: @auth_user.last_name
    fill_in "Middle name", with: @auth_user.middle_name
    fill_in "Prefix name", with: @auth_user.prefix_name
    fill_in "Status", with: @auth_user.status_id
    fill_in "Suffix name", with: @auth_user.suffix_name
    fill_in "Updated by", with: @auth_user.updated_by
    fill_in "Username", with: @auth_user.username
    click_on "Update Auth user"

    assert_text "Auth user was successfully updated"
    click_on "Back"
  end

  test "destroying a Auth user" do
    visit auth_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Auth user was successfully destroyed"
  end
end
