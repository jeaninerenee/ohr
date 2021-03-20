require "test_helper"

class SyllabusActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @syllabus_activity = syllabus_activities(:one)
  end

  test "should get index" do
    get syllabus_activities_url
    assert_response :success
  end

  test "should get new" do
    get new_syllabus_activity_url
    assert_response :success
  end

  test "should create syllabus_activity" do
    assert_difference('SyllabusActivity.count') do
      post syllabus_activities_url, params: { syllabus_activity: { activity_id: @syllabus_activity.activity_id, activity_note: @syllabus_activity.activity_note, activity_order: @syllabus_activity.activity_order, created_by: @syllabus_activity.created_by, status_id: @syllabus_activity.status_id, syllabus_id: @syllabus_activity.syllabus_id, updated_by: @syllabus_activity.updated_by } }
    end

    assert_redirected_to syllabus_activity_url(SyllabusActivity.last)
  end

  test "should show syllabus_activity" do
    get syllabus_activity_url(@syllabus_activity)
    assert_response :success
  end

  test "should get edit" do
    get edit_syllabus_activity_url(@syllabus_activity)
    assert_response :success
  end

  test "should update syllabus_activity" do
    patch syllabus_activity_url(@syllabus_activity), params: { syllabus_activity: { activity_id: @syllabus_activity.activity_id, activity_note: @syllabus_activity.activity_note, activity_order: @syllabus_activity.activity_order, created_by: @syllabus_activity.created_by, status_id: @syllabus_activity.status_id, syllabus_id: @syllabus_activity.syllabus_id, updated_by: @syllabus_activity.updated_by } }
    assert_redirected_to syllabus_activity_url(@syllabus_activity)
  end

  test "should destroy syllabus_activity" do
    assert_difference('SyllabusActivity.count', -1) do
      delete syllabus_activity_url(@syllabus_activity)
    end

    assert_redirected_to syllabus_activities_url
  end
end
