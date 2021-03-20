require "application_system_test_case"

class SyllabusTasksTest < ApplicationSystemTestCase
  setup do
    @syllabus_task = syllabus_tasks(:one)
  end

  test "visiting the index" do
    visit syllabus_tasks_url
    assert_selector "h1", text: "Syllabus Tasks"
  end

  test "creating a Syllabus task" do
    visit syllabus_tasks_url
    click_on "New Syllabus Task"

    fill_in "Created by", with: @syllabus_task.created_by
    fill_in "Day", with: @syllabus_task.day_id
    check "Exam ind" if @syllabus_task.exam_ind
    check "Excursion ind" if @syllabus_task.excursion_ind
    check "In person ind" if @syllabus_task.in_person_ind
    check "Lab ind" if @syllabus_task.lab_ind
    check "Online ind" if @syllabus_task.online_ind
    check "Pretest ind" if @syllabus_task.pretest_ind
    check "Quiz ind" if @syllabus_task.quiz_ind
    fill_in "Session number", with: @syllabus_task.session_number
    fill_in "Status", with: @syllabus_task.status_id
    fill_in "Syllabus", with: @syllabus_task.syllabus_id
    fill_in "Syllabus task", with: @syllabus_task.syllabus_task
    fill_in "Task note", with: @syllabus_task.task_note
    fill_in "Task priority", with: @syllabus_task.task_priority
    fill_in "Task time in hours", with: @syllabus_task.task_time_in_hours
    fill_in "Task time in minutes", with: @syllabus_task.task_time_in_minutes
    fill_in "Teacher note", with: @syllabus_task.teacher_note
    check "Test ind" if @syllabus_task.test_ind
    fill_in "Updated by", with: @syllabus_task.updated_by
    fill_in "Week number", with: @syllabus_task.week_number
    click_on "Create Syllabus task"

    assert_text "Syllabus task was successfully created"
    click_on "Back"
  end

  test "updating a Syllabus task" do
    visit syllabus_tasks_url
    click_on "Edit", match: :first

    fill_in "Created by", with: @syllabus_task.created_by
    fill_in "Day", with: @syllabus_task.day_id
    check "Exam ind" if @syllabus_task.exam_ind
    check "Excursion ind" if @syllabus_task.excursion_ind
    check "In person ind" if @syllabus_task.in_person_ind
    check "Lab ind" if @syllabus_task.lab_ind
    check "Online ind" if @syllabus_task.online_ind
    check "Pretest ind" if @syllabus_task.pretest_ind
    check "Quiz ind" if @syllabus_task.quiz_ind
    fill_in "Session number", with: @syllabus_task.session_number
    fill_in "Status", with: @syllabus_task.status_id
    fill_in "Syllabus", with: @syllabus_task.syllabus_id
    fill_in "Syllabus task", with: @syllabus_task.syllabus_task
    fill_in "Task note", with: @syllabus_task.task_note
    fill_in "Task priority", with: @syllabus_task.task_priority
    fill_in "Task time in hours", with: @syllabus_task.task_time_in_hours
    fill_in "Task time in minutes", with: @syllabus_task.task_time_in_minutes
    fill_in "Teacher note", with: @syllabus_task.teacher_note
    check "Test ind" if @syllabus_task.test_ind
    fill_in "Updated by", with: @syllabus_task.updated_by
    fill_in "Week number", with: @syllabus_task.week_number
    click_on "Update Syllabus task"

    assert_text "Syllabus task was successfully updated"
    click_on "Back"
  end

  test "destroying a Syllabus task" do
    visit syllabus_tasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Syllabus task was successfully destroyed"
  end
end
