require "test_helper"

class YearWeeksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @year_week = year_weeks(:one)
  end

  test "should get index" do
    get year_weeks_url
    assert_response :success
  end

  test "should get new" do
    get new_year_week_url
    assert_response :success
  end

  test "should create year_week" do
    assert_difference('YearWeek.count') do
      post year_weeks_url, params: { year_week: { auth_account_id: @year_week.auth_account_id, created_by: @year_week.created_by, status_id: @year_week.status_id, updated_by: @year_week.updated_by, week_end_date: @year_week.week_end_date, week_number: @year_week.week_number, week_start_date: @year_week.week_start_date, year_id: @year_week.year_id } }
    end

    assert_redirected_to year_week_url(YearWeek.last)
  end

  test "should show year_week" do
    get year_week_url(@year_week)
    assert_response :success
  end

  test "should get edit" do
    get edit_year_week_url(@year_week)
    assert_response :success
  end

  test "should update year_week" do
    patch year_week_url(@year_week), params: { year_week: { auth_account_id: @year_week.auth_account_id, created_by: @year_week.created_by, status_id: @year_week.status_id, updated_by: @year_week.updated_by, week_end_date: @year_week.week_end_date, week_number: @year_week.week_number, week_start_date: @year_week.week_start_date, year_id: @year_week.year_id } }
    assert_redirected_to year_week_url(@year_week)
  end

  test "should destroy year_week" do
    assert_difference('YearWeek.count', -1) do
      delete year_week_url(@year_week)
    end

    assert_redirected_to year_weeks_url
  end
end
