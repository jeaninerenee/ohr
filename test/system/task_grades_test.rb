require "application_system_test_case"

class TaskGradesTest < ApplicationSystemTestCase
  setup do
    @task_grade = task_grades(:one)
  end

  test "visiting the index" do
    visit task_grades_url
    assert_selector "h1", text: "Task Grades"
  end

  test "creating a Task grade" do
    visit task_grades_url
    click_on "New Task Grade"

    fill_in "Created by", with: @task_grade.created_by
    fill_in "Grade type", with: @task_grade.grade_type_id
    fill_in "Status", with: @task_grade.status_id
    fill_in "Task grade", with: @task_grade.task_grade
    fill_in "Task", with: @task_grade.task_id
    fill_in "Task total correct", with: @task_grade.task_total_correct
    fill_in "Task total possible", with: @task_grade.task_total_possible
    fill_in "Updated by", with: @task_grade.updated_by
    click_on "Create Task grade"

    assert_text "Task grade was successfully created"
    click_on "Back"
  end

  test "updating a Task grade" do
    visit task_grades_url
    click_on "Edit", match: :first

    fill_in "Created by", with: @task_grade.created_by
    fill_in "Grade type", with: @task_grade.grade_type_id
    fill_in "Status", with: @task_grade.status_id
    fill_in "Task grade", with: @task_grade.task_grade
    fill_in "Task", with: @task_grade.task_id
    fill_in "Task total correct", with: @task_grade.task_total_correct
    fill_in "Task total possible", with: @task_grade.task_total_possible
    fill_in "Updated by", with: @task_grade.updated_by
    click_on "Update Task grade"

    assert_text "Task grade was successfully updated"
    click_on "Back"
  end

  test "destroying a Task grade" do
    visit task_grades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task grade was successfully destroyed"
  end
end
