require "application_system_test_case"

class TaskActivitiesTest < ApplicationSystemTestCase
  setup do
    @task_activity = task_activities(:one)
  end

  test "visiting the index" do
    visit task_activities_url
    assert_selector "h1", text: "Task Activities"
  end

  test "creating a Task activity" do
    visit task_activities_url
    click_on "New Task Activity"

    fill_in "Activity", with: @task_activity.activity_id
    fill_in "Activity note", with: @task_activity.activity_note
    fill_in "Activity order", with: @task_activity.activity_order
    fill_in "Created by", with: @task_activity.created_by
    fill_in "Status", with: @task_activity.status_id
    fill_in "Task", with: @task_activity.task_id
    fill_in "Updated by", with: @task_activity.updated_by
    click_on "Create Task activity"

    assert_text "Task activity was successfully created"
    click_on "Back"
  end

  test "updating a Task activity" do
    visit task_activities_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @task_activity.activity_id
    fill_in "Activity note", with: @task_activity.activity_note
    fill_in "Activity order", with: @task_activity.activity_order
    fill_in "Created by", with: @task_activity.created_by
    fill_in "Status", with: @task_activity.status_id
    fill_in "Task", with: @task_activity.task_id
    fill_in "Updated by", with: @task_activity.updated_by
    click_on "Update Task activity"

    assert_text "Task activity was successfully updated"
    click_on "Back"
  end

  test "destroying a Task activity" do
    visit task_activities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task activity was successfully destroyed"
  end
end
