require "test_helper"

class DaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @day = days(:one)
  end

  test "should get index" do
    get days_url
    assert_response :success
  end

  test "should get new" do
    get new_day_url
    assert_response :success
  end

  test "should create day" do
    assert_difference('Day.count') do
      post days_url, params: { day: { auth_account_id: @day.auth_account_id, created_by: @day.created_by, day_long_name: @day.day_long_name, day_number: @day.day_number, day_short_name: @day.day_short_name, status_id: @day.status_id, updated_by: @day.updated_by } }
    end

    assert_redirected_to day_url(Day.last)
  end

  test "should show day" do
    get day_url(@day)
    assert_response :success
  end

  test "should get edit" do
    get edit_day_url(@day)
    assert_response :success
  end

  test "should update day" do
    patch day_url(@day), params: { day: { auth_account_id: @day.auth_account_id, created_by: @day.created_by, day_long_name: @day.day_long_name, day_number: @day.day_number, day_short_name: @day.day_short_name, status_id: @day.status_id, updated_by: @day.updated_by } }
    assert_redirected_to day_url(@day)
  end

  test "should destroy day" do
    assert_difference('Day.count', -1) do
      delete day_url(@day)
    end

    assert_redirected_to days_url
  end
end
