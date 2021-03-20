require "application_system_test_case"

class ActivitiesTest < ApplicationSystemTestCase
  setup do
    @activity = activities(:one)
  end

  test "visiting the index" do
    visit activities_url
    assert_selector "h1", text: "Activities"
  end

  test "creating a Activity" do
    visit activities_url
    click_on "New Activity"

    check "Academic course ind" if @activity.academic_course_ind
    fill_in "Activity name", with: @activity.activity_name
    fill_in "Activity note", with: @activity.activity_note
    fill_in "Activity order", with: @activity.activity_order
    fill_in "Activity overview", with: @activity.activity_overview
    fill_in "Activity priority", with: @activity.activity_priority
    fill_in "Auth account", with: @activity.auth_account_id
    fill_in "Created by", with: @activity.created_by
    fill_in "Default time in hours", with: @activity.default_time_in_hours
    fill_in "Default time in minutes", with: @activity.default_time_in_minutes
    check "Friday recur ind" if @activity.friday_recur_ind
    check "Monday recur ind" if @activity.monday_recur_ind
    check "Recurring task ind" if @activity.recurring_task_ind
    check "Saturday recur ind" if @activity.saturday_recur_ind
    fill_in "Status", with: @activity.status_id
    fill_in "Subject", with: @activity.subject_id
    check "Sunday recur ind" if @activity.sunday_recur_ind
    check "Thursday recur ind" if @activity.thursday_recur_ind
    fill_in "Transcript credit", with: @activity.transcript_credit
    check "Tuesday recur ind" if @activity.tuesday_recur_ind
    fill_in "Updated by", with: @activity.updated_by
    check "Wednesday recur ind" if @activity.wednesday_recur_ind
    click_on "Create Activity"

    assert_text "Activity was successfully created"
    click_on "Back"
  end

  test "updating a Activity" do
    visit activities_url
    click_on "Edit", match: :first

    check "Academic course ind" if @activity.academic_course_ind
    fill_in "Activity name", with: @activity.activity_name
    fill_in "Activity note", with: @activity.activity_note
    fill_in "Activity order", with: @activity.activity_order
    fill_in "Activity overview", with: @activity.activity_overview
    fill_in "Activity priority", with: @activity.activity_priority
    fill_in "Auth account", with: @activity.auth_account_id
    fill_in "Created by", with: @activity.created_by
    fill_in "Default time in hours", with: @activity.default_time_in_hours
    fill_in "Default time in minutes", with: @activity.default_time_in_minutes
    check "Friday recur ind" if @activity.friday_recur_ind
    check "Monday recur ind" if @activity.monday_recur_ind
    check "Recurring task ind" if @activity.recurring_task_ind
    check "Saturday recur ind" if @activity.saturday_recur_ind
    fill_in "Status", with: @activity.status_id
    fill_in "Subject", with: @activity.subject_id
    check "Sunday recur ind" if @activity.sunday_recur_ind
    check "Thursday recur ind" if @activity.thursday_recur_ind
    fill_in "Transcript credit", with: @activity.transcript_credit
    check "Tuesday recur ind" if @activity.tuesday_recur_ind
    fill_in "Updated by", with: @activity.updated_by
    check "Wednesday recur ind" if @activity.wednesday_recur_ind
    click_on "Update Activity"

    assert_text "Activity was successfully updated"
    click_on "Back"
  end

  test "destroying a Activity" do
    visit activities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Activity was successfully destroyed"
  end
end
