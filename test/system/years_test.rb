require "application_system_test_case"

class YearsTest < ApplicationSystemTestCase
  setup do
    @year = years(:one)
  end

  test "visiting the index" do
    visit years_url
    assert_selector "h1", text: "Years"
  end

  test "creating a Year" do
    visit years_url
    click_on "New Year"

    fill_in "Auth account", with: @year.auth_account_id
    fill_in "Created by", with: @year.created_by
    check "Default ind" if @year.default_ind
    fill_in "Status", with: @year.status_id
    fill_in "Updated by", with: @year.updated_by
    fill_in "Year end", with: @year.year_end
    fill_in "Year long name", with: @year.year_long_name
    fill_in "Year short name", with: @year.year_short_name
    fill_in "Year start", with: @year.year_start
    click_on "Create Year"

    assert_text "Year was successfully created"
    click_on "Back"
  end

  test "updating a Year" do
    visit years_url
    click_on "Edit", match: :first

    fill_in "Auth account", with: @year.auth_account_id
    fill_in "Created by", with: @year.created_by
    check "Default ind" if @year.default_ind
    fill_in "Status", with: @year.status_id
    fill_in "Updated by", with: @year.updated_by
    fill_in "Year end", with: @year.year_end
    fill_in "Year long name", with: @year.year_long_name
    fill_in "Year short name", with: @year.year_short_name
    fill_in "Year start", with: @year.year_start
    click_on "Update Year"

    assert_text "Year was successfully updated"
    click_on "Back"
  end

  test "destroying a Year" do
    visit years_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Year was successfully destroyed"
  end
end
