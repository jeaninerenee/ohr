require "test_helper"

class TaskSyllabusRelationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task_syllabus_relation = task_syllabus_relations(:one)
  end

  test "should get index" do
    get task_syllabus_relations_url
    assert_response :success
  end

  test "should get new" do
    get new_task_syllabus_relation_url
    assert_response :success
  end

  test "should create task_syllabus_relation" do
    assert_difference('TaskSyllabusRelation.count') do
      post task_syllabus_relations_url, params: { task_syllabus_relation: { created_by: @task_syllabus_relation.created_by, status_id: @task_syllabus_relation.status_id, syllabus_end_date: @task_syllabus_relation.syllabus_end_date, syllabus_start_date: @task_syllabus_relation.syllabus_start_date, syllabus_task_id: @task_syllabus_relation.syllabus_task_id, task_id: @task_syllabus_relation.task_id, updated_by: @task_syllabus_relation.updated_by } }
    end

    assert_redirected_to task_syllabus_relation_url(TaskSyllabusRelation.last)
  end

  test "should show task_syllabus_relation" do
    get task_syllabus_relation_url(@task_syllabus_relation)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_syllabus_relation_url(@task_syllabus_relation)
    assert_response :success
  end

  test "should update task_syllabus_relation" do
    patch task_syllabus_relation_url(@task_syllabus_relation), params: { task_syllabus_relation: { created_by: @task_syllabus_relation.created_by, status_id: @task_syllabus_relation.status_id, syllabus_end_date: @task_syllabus_relation.syllabus_end_date, syllabus_start_date: @task_syllabus_relation.syllabus_start_date, syllabus_task_id: @task_syllabus_relation.syllabus_task_id, task_id: @task_syllabus_relation.task_id, updated_by: @task_syllabus_relation.updated_by } }
    assert_redirected_to task_syllabus_relation_url(@task_syllabus_relation)
  end

  test "should destroy task_syllabus_relation" do
    assert_difference('TaskSyllabusRelation.count', -1) do
      delete task_syllabus_relation_url(@task_syllabus_relation)
    end

    assert_redirected_to task_syllabus_relations_url
  end
end
