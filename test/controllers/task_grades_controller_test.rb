require "test_helper"

class TaskGradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task_grade = task_grades(:one)
  end

  test "should get index" do
    get task_grades_url
    assert_response :success
  end

  test "should get new" do
    get new_task_grade_url
    assert_response :success
  end

  test "should create task_grade" do
    assert_difference('TaskGrade.count') do
      post task_grades_url, params: { task_grade: { created_by: @task_grade.created_by, grade_type_id: @task_grade.grade_type_id, status_id: @task_grade.status_id, task_grade: @task_grade.task_grade, task_id: @task_grade.task_id, task_total_correct: @task_grade.task_total_correct, task_total_possible: @task_grade.task_total_possible, updated_by: @task_grade.updated_by } }
    end

    assert_redirected_to task_grade_url(TaskGrade.last)
  end

  test "should show task_grade" do
    get task_grade_url(@task_grade)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_grade_url(@task_grade)
    assert_response :success
  end

  test "should update task_grade" do
    patch task_grade_url(@task_grade), params: { task_grade: { created_by: @task_grade.created_by, grade_type_id: @task_grade.grade_type_id, status_id: @task_grade.status_id, task_grade: @task_grade.task_grade, task_id: @task_grade.task_id, task_total_correct: @task_grade.task_total_correct, task_total_possible: @task_grade.task_total_possible, updated_by: @task_grade.updated_by } }
    assert_redirected_to task_grade_url(@task_grade)
  end

  test "should destroy task_grade" do
    assert_difference('TaskGrade.count', -1) do
      delete task_grade_url(@task_grade)
    end

    assert_redirected_to task_grades_url
  end
end
