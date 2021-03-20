require "test_helper"

class ActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity = activities(:one)
  end

  test "should get index" do
    get activities_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_url
    assert_response :success
  end

  test "should create activity" do
    assert_difference('Activity.count') do
      post activities_url, params: { activity: { academic_course_ind: @activity.academic_course_ind, activity_name: @activity.activity_name, activity_note: @activity.activity_note, activity_order: @activity.activity_order, activity_overview: @activity.activity_overview, activity_priority: @activity.activity_priority, auth_account_id: @activity.auth_account_id, created_by: @activity.created_by, default_time_in_hours: @activity.default_time_in_hours, default_time_in_minutes: @activity.default_time_in_minutes, friday_recur_ind: @activity.friday_recur_ind, monday_recur_ind: @activity.monday_recur_ind, recurring_task_ind: @activity.recurring_task_ind, saturday_recur_ind: @activity.saturday_recur_ind, status_id: @activity.status_id, subject_id: @activity.subject_id, sunday_recur_ind: @activity.sunday_recur_ind, thursday_recur_ind: @activity.thursday_recur_ind, transcript_credit: @activity.transcript_credit, tuesday_recur_ind: @activity.tuesday_recur_ind, updated_by: @activity.updated_by, wednesday_recur_ind: @activity.wednesday_recur_ind } }
    end

    assert_redirected_to activity_url(Activity.last)
  end

  test "should show activity" do
    get activity_url(@activity)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_url(@activity)
    assert_response :success
  end

  test "should update activity" do
    patch activity_url(@activity), params: { activity: { academic_course_ind: @activity.academic_course_ind, activity_name: @activity.activity_name, activity_note: @activity.activity_note, activity_order: @activity.activity_order, activity_overview: @activity.activity_overview, activity_priority: @activity.activity_priority, auth_account_id: @activity.auth_account_id, created_by: @activity.created_by, default_time_in_hours: @activity.default_time_in_hours, default_time_in_minutes: @activity.default_time_in_minutes, friday_recur_ind: @activity.friday_recur_ind, monday_recur_ind: @activity.monday_recur_ind, recurring_task_ind: @activity.recurring_task_ind, saturday_recur_ind: @activity.saturday_recur_ind, status_id: @activity.status_id, subject_id: @activity.subject_id, sunday_recur_ind: @activity.sunday_recur_ind, thursday_recur_ind: @activity.thursday_recur_ind, transcript_credit: @activity.transcript_credit, tuesday_recur_ind: @activity.tuesday_recur_ind, updated_by: @activity.updated_by, wednesday_recur_ind: @activity.wednesday_recur_ind } }
    assert_redirected_to activity_url(@activity)
  end

  test "should destroy activity" do
    assert_difference('Activity.count', -1) do
      delete activity_url(@activity)
    end

    assert_redirected_to activities_url
  end
end
