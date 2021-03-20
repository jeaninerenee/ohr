require "application_system_test_case"

class SyllabusTaskActivitiesTest < ApplicationSystemTestCase
  setup do
    @syllabus_task_activity = syllabus_task_activities(:one)
  end

  test "visiting the index" do
    visit syllabus_task_activities_url
    assert_selector "h1", text: "Syllabus Task Activities"
  end

  test "creating a Syllabus task activity" do
    visit syllabus_task_activities_url
    click_on "New Syllabus Task Activity"

    fill_in "Activity", with: @syllabus_task_activity.activity_id
    fill_in "Activity note", with: @syllabus_task_activity.activity_note
    fill_in "Activity order", with: @syllabus_task_activity.activity_order
    fill_in "Created by", with: @syllabus_task_activity.created_by
    check "Primary ind" if @syllabus_task_activity.primary_ind
    fill_in "Status", with: @syllabus_task_activity.status_id
    fill_in "Syllabus task", with: @syllabus_task_activity.syllabus_task_id
    fill_in "Updated by", with: @syllabus_task_activity.updated_by
    click_on "Create Syllabus task activity"

    assert_text "Syllabus task activity was successfully created"
    click_on "Back"
  end

  test "updating a Syllabus task activity" do
    visit syllabus_task_activities_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @syllabus_task_activity.activity_id
    fill_in "Activity note", with: @syllabus_task_activity.activity_note
    fill_in "Activity order", with: @syllabus_task_activity.activity_order
    fill_in "Created by", with: @syllabus_task_activity.created_by
    check "Primary ind" if @syllabus_task_activity.primary_ind
    fill_in "Status", with: @syllabus_task_activity.status_id
    fill_in "Syllabus task", with: @syllabus_task_activity.syllabus_task_id
    fill_in "Updated by", with: @syllabus_task_activity.updated_by
    click_on "Update Syllabus task activity"

    assert_text "Syllabus task activity was successfully updated"
    click_on "Back"
  end

  test "destroying a Syllabus task activity" do
    visit syllabus_task_activities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Syllabus task activity was successfully destroyed"
  end
end
