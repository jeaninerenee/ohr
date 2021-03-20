require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_task_url
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post tasks_url, params: { task: { absent_ind: @task.absent_ind, activity_id: @task.activity_id, actual_end_date: @task.actual_end_date, actual_start_date: @task.actual_start_date, auth_account_id: @task.auth_account_id, created_by: @task.created_by, exam_ind: @task.exam_ind, excursion_ind: @task.excursion_ind, in_person_ind: @task.in_person_ind, lab_ind: @task.lab_ind, online_ind: @task.online_ind, pretest_ind: @task.pretest_ind, quiz_ind: @task.quiz_ind, scheduled_end_date: @task.scheduled_end_date, scheduled_start_date: @task.scheduled_start_date, scratch_ind: @task.scratch_ind, session_number: @task.session_number, status_id: @task.status_id, student_sign_off_ind: @task.student_sign_off_ind, student_year_id: @task.student_year_id, task_description: @task.task_description, task_note: @task.task_note, task_priority: @task.task_priority, task_time_in_hours: @task.task_time_in_hours, task_time_in_minutes: @task.task_time_in_minutes, teacher_note: @task.teacher_note, teacher_sign_off_ind: @task.teacher_sign_off_ind, test_ind: @task.test_ind, updated_by: @task.updated_by } }
    end

    assert_redirected_to task_url(Task.last)
  end

  test "should show task" do
    get task_url(@task)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_url(@task)
    assert_response :success
  end

  test "should update task" do
    patch task_url(@task), params: { task: { absent_ind: @task.absent_ind, activity_id: @task.activity_id, actual_end_date: @task.actual_end_date, actual_start_date: @task.actual_start_date, auth_account_id: @task.auth_account_id, created_by: @task.created_by, exam_ind: @task.exam_ind, excursion_ind: @task.excursion_ind, in_person_ind: @task.in_person_ind, lab_ind: @task.lab_ind, online_ind: @task.online_ind, pretest_ind: @task.pretest_ind, quiz_ind: @task.quiz_ind, scheduled_end_date: @task.scheduled_end_date, scheduled_start_date: @task.scheduled_start_date, scratch_ind: @task.scratch_ind, session_number: @task.session_number, status_id: @task.status_id, student_sign_off_ind: @task.student_sign_off_ind, student_year_id: @task.student_year_id, task_description: @task.task_description, task_note: @task.task_note, task_priority: @task.task_priority, task_time_in_hours: @task.task_time_in_hours, task_time_in_minutes: @task.task_time_in_minutes, teacher_note: @task.teacher_note, teacher_sign_off_ind: @task.teacher_sign_off_ind, test_ind: @task.test_ind, updated_by: @task.updated_by } }
    assert_redirected_to task_url(@task)
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete task_url(@task)
    end

    assert_redirected_to tasks_url
  end
end
