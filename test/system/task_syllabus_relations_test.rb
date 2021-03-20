require "application_system_test_case"

class TaskSyllabusRelationsTest < ApplicationSystemTestCase
  setup do
    @task_syllabus_relation = task_syllabus_relations(:one)
  end

  test "visiting the index" do
    visit task_syllabus_relations_url
    assert_selector "h1", text: "Task Syllabus Relations"
  end

  test "creating a Task syllabus relation" do
    visit task_syllabus_relations_url
    click_on "New Task Syllabus Relation"

    fill_in "Created by", with: @task_syllabus_relation.created_by
    fill_in "Status", with: @task_syllabus_relation.status_id
    fill_in "Syllabus end date", with: @task_syllabus_relation.syllabus_end_date
    fill_in "Syllabus start date", with: @task_syllabus_relation.syllabus_start_date
    fill_in "Syllabus task", with: @task_syllabus_relation.syllabus_task_id
    fill_in "Task", with: @task_syllabus_relation.task_id
    fill_in "Updated by", with: @task_syllabus_relation.updated_by
    click_on "Create Task syllabus relation"

    assert_text "Task syllabus relation was successfully created"
    click_on "Back"
  end

  test "updating a Task syllabus relation" do
    visit task_syllabus_relations_url
    click_on "Edit", match: :first

    fill_in "Created by", with: @task_syllabus_relation.created_by
    fill_in "Status", with: @task_syllabus_relation.status_id
    fill_in "Syllabus end date", with: @task_syllabus_relation.syllabus_end_date
    fill_in "Syllabus start date", with: @task_syllabus_relation.syllabus_start_date
    fill_in "Syllabus task", with: @task_syllabus_relation.syllabus_task_id
    fill_in "Task", with: @task_syllabus_relation.task_id
    fill_in "Updated by", with: @task_syllabus_relation.updated_by
    click_on "Update Task syllabus relation"

    assert_text "Task syllabus relation was successfully updated"
    click_on "Back"
  end

  test "destroying a Task syllabus relation" do
    visit task_syllabus_relations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task syllabus relation was successfully destroyed"
  end
end
