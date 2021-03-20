require "test_helper"

class TaskActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task_activity = task_activities(:one)
  end

  test "should get index" do
    get task_activities_url
    assert_response :success
  end

  test "should get new" do
    get new_task_activity_url
    assert_response :success
  end

  test "should create task_activity" do
    assert_difference('TaskActivity.count') do
      post task_activities_url, params: { task_activity: { activity_id: @task_activity.activity_id, activity_note: @task_activity.activity_note, activity_order: @task_activity.activity_order, created_by: @task_activity.created_by, status_id: @task_activity.status_id, task_id: @task_activity.task_id, updated_by: @task_activity.updated_by } }
    end

    assert_redirected_to task_activity_url(TaskActivity.last)
  end

  test "should show task_activity" do
    get task_activity_url(@task_activity)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_activity_url(@task_activity)
    assert_response :success
  end

  test "should update task_activity" do
    patch task_activity_url(@task_activity), params: { task_activity: { activity_id: @task_activity.activity_id, activity_note: @task_activity.activity_note, activity_order: @task_activity.activity_order, created_by: @task_activity.created_by, status_id: @task_activity.status_id, task_id: @task_activity.task_id, updated_by: @task_activity.updated_by } }
    assert_redirected_to task_activity_url(@task_activity)
  end

  test "should destroy task_activity" do
    assert_difference('TaskActivity.count', -1) do
      delete task_activity_url(@task_activity)
    end

    assert_redirected_to task_activities_url
  end
end
