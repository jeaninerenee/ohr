require "test_helper"

class SyllabusTaskActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @syllabus_task_activity = syllabus_task_activities(:one)
  end

  test "should get index" do
    get syllabus_task_activities_url
    assert_response :success
  end

  test "should get new" do
    get new_syllabus_task_activity_url
    assert_response :success
  end

  test "should create syllabus_task_activity" do
    assert_difference('SyllabusTaskActivity.count') do
      post syllabus_task_activities_url, params: { syllabus_task_activity: { activity_id: @syllabus_task_activity.activity_id, activity_note: @syllabus_task_activity.activity_note, activity_order: @syllabus_task_activity.activity_order, created_by: @syllabus_task_activity.created_by, primary_ind: @syllabus_task_activity.primary_ind, status_id: @syllabus_task_activity.status_id, syllabus_task_id: @syllabus_task_activity.syllabus_task_id, updated_by: @syllabus_task_activity.updated_by } }
    end

    assert_redirected_to syllabus_task_activity_url(SyllabusTaskActivity.last)
  end

  test "should show syllabus_task_activity" do
    get syllabus_task_activity_url(@syllabus_task_activity)
    assert_response :success
  end

  test "should get edit" do
    get edit_syllabus_task_activity_url(@syllabus_task_activity)
    assert_response :success
  end

  test "should update syllabus_task_activity" do
    patch syllabus_task_activity_url(@syllabus_task_activity), params: { syllabus_task_activity: { activity_id: @syllabus_task_activity.activity_id, activity_note: @syllabus_task_activity.activity_note, activity_order: @syllabus_task_activity.activity_order, created_by: @syllabus_task_activity.created_by, primary_ind: @syllabus_task_activity.primary_ind, status_id: @syllabus_task_activity.status_id, syllabus_task_id: @syllabus_task_activity.syllabus_task_id, updated_by: @syllabus_task_activity.updated_by } }
    assert_redirected_to syllabus_task_activity_url(@syllabus_task_activity)
  end

  test "should destroy syllabus_task_activity" do
    assert_difference('SyllabusTaskActivity.count', -1) do
      delete syllabus_task_activity_url(@syllabus_task_activity)
    end

    assert_redirected_to syllabus_task_activities_url
  end
end
