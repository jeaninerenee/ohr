require "test_helper"

class YearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @year = years(:one)
  end

  test "should get index" do
    get years_url
    assert_response :success
  end

  test "should get new" do
    get new_year_url
    assert_response :success
  end

  test "should create year" do
    assert_difference('Year.count') do
      post years_url, params: { year: { auth_account_id: @year.auth_account_id, created_by: @year.created_by, default_ind: @year.default_ind, status_id: @year.status_id, updated_by: @year.updated_by, year_end: @year.year_end, year_long_name: @year.year_long_name, year_short_name: @year.year_short_name, year_start: @year.year_start } }
    end

    assert_redirected_to year_url(Year.last)
  end

  test "should show year" do
    get year_url(@year)
    assert_response :success
  end

  test "should get edit" do
    get edit_year_url(@year)
    assert_response :success
  end

  test "should update year" do
    patch year_url(@year), params: { year: { auth_account_id: @year.auth_account_id, created_by: @year.created_by, default_ind: @year.default_ind, status_id: @year.status_id, updated_by: @year.updated_by, year_end: @year.year_end, year_long_name: @year.year_long_name, year_short_name: @year.year_short_name, year_start: @year.year_start } }
    assert_redirected_to year_url(@year)
  end

  test "should destroy year" do
    assert_difference('Year.count', -1) do
      delete year_url(@year)
    end

    assert_redirected_to years_url
  end
end
