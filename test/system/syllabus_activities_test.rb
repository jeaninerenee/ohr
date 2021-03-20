require "application_system_test_case"

class SyllabusActivitiesTest < ApplicationSystemTestCase
  setup do
    @syllabus_activity = syllabus_activities(:one)
  end

  test "visiting the index" do
    visit syllabus_activities_url
    assert_selector "h1", text: "Syllabus Activities"
  end

  test "creating a Syllabus activity" do
    visit syllabus_activities_url
    click_on "New Syllabus Activity"

    fill_in "Activity", with: @syllabus_activity.activity_id
    fill_in "Activity note", with: @syllabus_activity.activity_note
    fill_in "Activity order", with: @syllabus_activity.activity_order
    fill_in "Created by", with: @syllabus_activity.created_by
    fill_in "Status", with: @syllabus_activity.status_id
    fill_in "Syllabus", with: @syllabus_activity.syllabus_id
    fill_in "Updated by", with: @syllabus_activity.updated_by
    click_on "Create Syllabus activity"

    assert_text "Syllabus activity was successfully created"
    click_on "Back"
  end

  test "updating a Syllabus activity" do
    visit syllabus_activities_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @syllabus_activity.activity_id
    fill_in "Activity note", with: @syllabus_activity.activity_note
    fill_in "Activity order", with: @syllabus_activity.activity_order
    fill_in "Created by", with: @syllabus_activity.created_by
    fill_in "Status", with: @syllabus_activity.status_id
    fill_in "Syllabus", with: @syllabus_activity.syllabus_id
    fill_in "Updated by", with: @syllabus_activity.updated_by
    click_on "Update Syllabus activity"

    assert_text "Syllabus activity was successfully updated"
    click_on "Back"
  end

  test "destroying a Syllabus activity" do
    visit syllabus_activities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Syllabus activity was successfully destroyed"
  end
end
