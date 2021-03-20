require "application_system_test_case"

class YearWeeksTest < ApplicationSystemTestCase
  setup do
    @year_week = year_weeks(:one)
  end

  test "visiting the index" do
    visit year_weeks_url
    assert_selector "h1", text: "Year Weeks"
  end

  test "creating a Year week" do
    visit year_weeks_url
    click_on "New Year Week"

    fill_in "Auth account", with: @year_week.auth_account_id
    fill_in "Created by", with: @year_week.created_by
    fill_in "Status", with: @year_week.status_id
    fill_in "Updated by", with: @year_week.updated_by
    fill_in "Week end date", with: @year_week.week_end_date
    fill_in "Week number", with: @year_week.week_number
    fill_in "Week start date", with: @year_week.week_start_date
    fill_in "Year", with: @year_week.year_id
    click_on "Create Year week"

    assert_text "Year week was successfully created"
    click_on "Back"
  end

  test "updating a Year week" do
    visit year_weeks_url
    click_on "Edit", match: :first

    fill_in "Auth account", with: @year_week.auth_account_id
    fill_in "Created by", with: @year_week.created_by
    fill_in "Status", with: @year_week.status_id
    fill_in "Updated by", with: @year_week.updated_by
    fill_in "Week end date", with: @year_week.week_end_date
    fill_in "Week number", with: @year_week.week_number
    fill_in "Week start date", with: @year_week.week_start_date
    fill_in "Year", with: @year_week.year_id
    click_on "Update Year week"

    assert_text "Year week was successfully updated"
    click_on "Back"
  end

  test "destroying a Year week" do
    visit year_weeks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Year week was successfully destroyed"
  end
end
