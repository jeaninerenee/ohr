require "test_helper"

class SyllabusTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @syllabus_task = syllabus_tasks(:one)
  end

  test "should get index" do
    get syllabus_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_syllabus_task_url
    assert_response :success
  end

  test "should create syllabus_task" do
    assert_difference('SyllabusTask.count') do
      post syllabus_tasks_url, params: { syllabus_task: { created_by: @syllabus_task.created_by, day_id: @syllabus_task.day_id, exam_ind: @syllabus_task.exam_ind, excursion_ind: @syllabus_task.excursion_ind, in_person_ind: @syllabus_task.in_person_ind, lab_ind: @syllabus_task.lab_ind, online_ind: @syllabus_task.online_ind, pretest_ind: @syllabus_task.pretest_ind, quiz_ind: @syllabus_task.quiz_ind, session_number: @syllabus_task.session_number, status_id: @syllabus_task.status_id, syllabus_id: @syllabus_task.syllabus_id, syllabus_task: @syllabus_task.syllabus_task, task_note: @syllabus_task.task_note, task_priority: @syllabus_task.task_priority, task_time_in_hours: @syllabus_task.task_time_in_hours, task_time_in_minutes: @syllabus_task.task_time_in_minutes, teacher_note: @syllabus_task.teacher_note, test_ind: @syllabus_task.test_ind, updated_by: @syllabus_task.updated_by, week_number: @syllabus_task.week_number } }
    end

    assert_redirected_to syllabus_task_url(SyllabusTask.last)
  end

  test "should show syllabus_task" do
    get syllabus_task_url(@syllabus_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_syllabus_task_url(@syllabus_task)
    assert_response :success
  end

  test "should update syllabus_task" do
    patch syllabus_task_url(@syllabus_task), params: { syllabus_task: { created_by: @syllabus_task.created_by, day_id: @syllabus_task.day_id, exam_ind: @syllabus_task.exam_ind, excursion_ind: @syllabus_task.excursion_ind, in_person_ind: @syllabus_task.in_person_ind, lab_ind: @syllabus_task.lab_ind, online_ind: @syllabus_task.online_ind, pretest_ind: @syllabus_task.pretest_ind, quiz_ind: @syllabus_task.quiz_ind, session_number: @syllabus_task.session_number, status_id: @syllabus_task.status_id, syllabus_id: @syllabus_task.syllabus_id, syllabus_task: @syllabus_task.syllabus_task, task_note: @syllabus_task.task_note, task_priority: @syllabus_task.task_priority, task_time_in_hours: @syllabus_task.task_time_in_hours, task_time_in_minutes: @syllabus_task.task_time_in_minutes, teacher_note: @syllabus_task.teacher_note, test_ind: @syllabus_task.test_ind, updated_by: @syllabus_task.updated_by, week_number: @syllabus_task.week_number } }
    assert_redirected_to syllabus_task_url(@syllabus_task)
  end

  test "should destroy syllabus_task" do
    assert_difference('SyllabusTask.count', -1) do
      delete syllabus_task_url(@syllabus_task)
    end

    assert_redirected_to syllabus_tasks_url
  end
end
