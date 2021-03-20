require "application_system_test_case"

class StudentActivitiesTest < ApplicationSystemTestCase
  setup do
    @student_activity = student_activities(:one)
  end

  test "visiting the index" do
    visit student_activities_url
    assert_selector "h1", text: "Student Activities"
  end

  test "creating a Student activity" do
    visit student_activities_url
    click_on "New Student Activity"

    fill_in "Activity", with: @student_activity.activity_id
    fill_in "Auth account", with: @student_activity.auth_account_id
    fill_in "Created by", with: @student_activity.created_by
    check "Done ind" if @student_activity.done_ind
    fill_in "Status", with: @student_activity.status_id
    fill_in "Student activity priority", with: @student_activity.student_activity_priority
    fill_in "Student year", with: @student_activity.student_year_id
    fill_in "Updated by", with: @student_activity.updated_by
    click_on "Create Student activity"

    assert_text "Student activity was successfully created"
    click_on "Back"
  end

  test "updating a Student activity" do
    visit student_activities_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @student_activity.activity_id
    fill_in "Auth account", with: @student_activity.auth_account_id
    fill_in "Created by", with: @student_activity.created_by
    check "Done ind" if @student_activity.done_ind
    fill_in "Status", with: @student_activity.status_id
    fill_in "Student activity priority", with: @student_activity.student_activity_priority
    fill_in "Student year", with: @student_activity.student_year_id
    fill_in "Updated by", with: @student_activity.updated_by
    click_on "Update Student activity"

    assert_text "Student activity was successfully updated"
    click_on "Back"
  end

  test "destroying a Student activity" do
    visit student_activities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student activity was successfully destroyed"
  end
end
