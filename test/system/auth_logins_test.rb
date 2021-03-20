require "application_system_test_case"

class AuthLoginsTest < ApplicationSystemTestCase
  setup do
    @auth_login = auth_logins(:one)
  end

  test "visiting the index" do
    visit auth_logins_url
    assert_selector "h1", text: "Auth Logins"
  end

  test "creating a Auth login" do
    visit auth_logins_url
    click_on "New Auth Login"

    fill_in "Auth user", with: @auth_login.auth_user_id
    fill_in "Created by", with: @auth_login.created_by
    fill_in "Devise user", with: @auth_login.devise_user_id
    fill_in "Status", with: @auth_login.status_id
    fill_in "Updated by", with: @auth_login.updated_by
    click_on "Create Auth login"

    assert_text "Auth login was successfully created"
    click_on "Back"
  end

  test "updating a Auth login" do
    visit auth_logins_url
    click_on "Edit", match: :first

    fill_in "Auth user", with: @auth_login.auth_user_id
    fill_in "Created by", with: @auth_login.created_by
    fill_in "Devise user", with: @auth_login.devise_user_id
    fill_in "Status", with: @auth_login.status_id
    fill_in "Updated by", with: @auth_login.updated_by
    click_on "Update Auth login"

    assert_text "Auth login was successfully updated"
    click_on "Back"
  end

  test "destroying a Auth login" do
    visit auth_logins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Auth login was successfully destroyed"
  end
end
