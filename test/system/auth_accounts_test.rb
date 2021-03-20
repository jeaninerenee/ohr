require "application_system_test_case"

class AuthAccountsTest < ApplicationSystemTestCase
  setup do
    @auth_account = auth_accounts(:one)
  end

  test "visiting the index" do
    visit auth_accounts_url
    assert_selector "h1", text: "Auth Accounts"
  end

  test "creating a Auth account" do
    visit auth_accounts_url
    click_on "New Auth Account"

    fill_in "Account name", with: @auth_account.account_name
    fill_in "Created by", with: @auth_account.created_by
    fill_in "Plan", with: @auth_account.plan_id
    fill_in "Status", with: @auth_account.status_id
    fill_in "Updated by", with: @auth_account.updated_by
    click_on "Create Auth account"

    assert_text "Auth account was successfully created"
    click_on "Back"
  end

  test "updating a Auth account" do
    visit auth_accounts_url
    click_on "Edit", match: :first

    fill_in "Account name", with: @auth_account.account_name
    fill_in "Created by", with: @auth_account.created_by
    fill_in "Plan", with: @auth_account.plan_id
    fill_in "Status", with: @auth_account.status_id
    fill_in "Updated by", with: @auth_account.updated_by
    click_on "Update Auth account"

    assert_text "Auth account was successfully updated"
    click_on "Back"
  end

  test "destroying a Auth account" do
    visit auth_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Auth account was successfully destroyed"
  end
end
