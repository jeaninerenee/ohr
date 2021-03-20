require "test_helper"

class StudentActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_activity = student_activities(:one)
  end

  test "should get index" do
    get student_activities_url
    assert_response :success
  end

  test "should get new" do
    get new_student_activity_url
    assert_response :success
  end

  test "should create student_activity" do
    assert_difference('StudentActivity.count') do
      post student_activities_url, params: { student_activity: { activity_id: @student_activity.activity_id, auth_account_id: @student_activity.auth_account_id, created_by: @student_activity.created_by, done_ind: @student_activity.done_ind, status_id: @student_activity.status_id, student_activity_priority: @student_activity.student_activity_priority, student_year_id: @student_activity.student_year_id, updated_by: @student_activity.updated_by } }
    end

    assert_redirected_to student_activity_url(StudentActivity.last)
  end

  test "should show student_activity" do
    get student_activity_url(@student_activity)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_activity_url(@student_activity)
    assert_response :success
  end

  test "should update student_activity" do
    patch student_activity_url(@student_activity), params: { student_activity: { activity_id: @student_activity.activity_id, auth_account_id: @student_activity.auth_account_id, created_by: @student_activity.created_by, done_ind: @student_activity.done_ind, status_id: @student_activity.status_id, student_activity_priority: @student_activity.student_activity_priority, student_year_id: @student_activity.student_year_id, updated_by: @student_activity.updated_by } }
    assert_redirected_to student_activity_url(@student_activity)
  end

  test "should destroy student_activity" do
    assert_difference('StudentActivity.count', -1) do
      delete student_activity_url(@student_activity)
    end

    assert_redirected_to student_activities_url
  end
end
