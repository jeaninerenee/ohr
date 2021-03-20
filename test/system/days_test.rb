require "application_system_test_case"

class DaysTest < ApplicationSystemTestCase
  setup do
    @day = days(:one)
  end

  test "visiting the index" do
    visit days_url
    assert_selector "h1", text: "Days"
  end

  test "creating a Day" do
    visit days_url
    click_on "New Day"

    fill_in "Auth account", with: @day.auth_account_id
    fill_in "Created by", with: @day.created_by
    fill_in "Day long name", with: @day.day_long_name
    fill_in "Day number", with: @day.day_number
    fill_in "Day short name", with: @day.day_short_name
    fill_in "Status", with: @day.status_id
    fill_in "Updated by", with: @day.updated_by
    click_on "Create Day"

    assert_text "Day was successfully created"
    click_on "Back"
  end

  test "updating a Day" do
    visit days_url
    click_on "Edit", match: :first

    fill_in "Auth account", with: @day.auth_account_id
    fill_in "Created by", with: @day.created_by
    fill_in "Day long name", with: @day.day_long_name
    fill_in "Day number", with: @day.day_number
    fill_in "Day short name", with: @day.day_short_name
    fill_in "Status", with: @day.status_id
    fill_in "Updated by", with: @day.updated_by
    click_on "Update Day"

    assert_text "Day was successfully updated"
    click_on "Back"
  end

  test "destroying a Day" do
    visit days_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Day was successfully destroyed"
  end
end
