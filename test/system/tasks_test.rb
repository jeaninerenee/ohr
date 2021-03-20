require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  setup do
    @task = tasks(:one)
  end

  test "visiting the index" do
    visit tasks_url
    assert_selector "h1", text: "Tasks"
  end

  test "creating a Task" do
    visit tasks_url
    click_on "New Task"

    check "Absent ind" if @task.absent_ind
    fill_in "Activity", with: @task.activity_id
    fill_in "Actual end date", with: @task.actual_end_date
    fill_in "Actual start date", with: @task.actual_start_date
    fill_in "Auth account", with: @task.auth_account_id
    fill_in "Created by", with: @task.created_by
    check "Exam ind" if @task.exam_ind
    check "Excursion ind" if @task.excursion_ind
    check "In person ind" if @task.in_person_ind
    check "Lab ind" if @task.lab_ind
    check "Online ind" if @task.online_ind
    check "Pretest ind" if @task.pretest_ind
    check "Quiz ind" if @task.quiz_ind
    fill_in "Scheduled end date", with: @task.scheduled_end_date
    fill_in "Scheduled start date", with: @task.scheduled_start_date
    check "Scratch ind" if @task.scratch_ind
    fill_in "Session number", with: @task.session_number
    fill_in "Status", with: @task.status_id
    check "Student sign off ind" if @task.student_sign_off_ind
    fill_in "Student year", with: @task.student_year_id
    fill_in "Task description", with: @task.task_description
    fill_in "Task note", with: @task.task_note
    fill_in "Task priority", with: @task.task_priority
    fill_in "Task time in hours", with: @task.task_time_in_hours
    fill_in "Task time in minutes", with: @task.task_time_in_minutes
    fill_in "Teacher note", with: @task.teacher_note
    check "Teacher sign off ind" if @task.teacher_sign_off_ind
    check "Test ind" if @task.test_ind
    fill_in "Updated by", with: @task.updated_by
    click_on "Create Task"

    assert_text "Task was successfully created"
    click_on "Back"
  end

  test "updating a Task" do
    visit tasks_url
    click_on "Edit", match: :first

    check "Absent ind" if @task.absent_ind
    fill_in "Activity", with: @task.activity_id
    fill_in "Actual end date", with: @task.actual_end_date
    fill_in "Actual start date", with: @task.actual_start_date
    fill_in "Auth account", with: @task.auth_account_id
    fill_in "Created by", with: @task.created_by
    check "Exam ind" if @task.exam_ind
    check "Excursion ind" if @task.excursion_ind
    check "In person ind" if @task.in_person_ind
    check "Lab ind" if @task.lab_ind
    check "Online ind" if @task.online_ind
    check "Pretest ind" if @task.pretest_ind
    check "Quiz ind" if @task.quiz_ind
    fill_in "Scheduled end date", with: @task.scheduled_end_date
    fill_in "Scheduled start date", with: @task.scheduled_start_date
    check "Scratch ind" if @task.scratch_ind
    fill_in "Session number", with: @task.session_number
    fill_in "Status", with: @task.status_id
    check "Student sign off ind" if @task.student_sign_off_ind
    fill_in "Student year", with: @task.student_year_id
    fill_in "Task description", with: @task.task_description
    fill_in "Task note", with: @task.task_note
    fill_in "Task priority", with: @task.task_priority
    fill_in "Task time in hours", with: @task.task_time_in_hours
    fill_in "Task time in minutes", with: @task.task_time_in_minutes
    fill_in "Teacher note", with: @task.teacher_note
    check "Teacher sign off ind" if @task.teacher_sign_off_ind
    check "Test ind" if @task.test_ind
    fill_in "Updated by", with: @task.updated_by
    click_on "Update Task"

    assert_text "Task was successfully updated"
    click_on "Back"
  end

  test "destroying a Task" do
    visit tasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task was successfully destroyed"
  end
end
