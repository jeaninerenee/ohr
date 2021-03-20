require "test_helper"

class StudentYearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_year = student_years(:one)
  end

  test "should get index" do
    get student_years_url
    assert_response :success
  end

  test "should get new" do
    get new_student_year_url
    assert_response :success
  end

  test "should create student_year" do
    assert_difference('StudentYear.count') do
      post student_years_url, params: { student_year: { auth_account_id: @student_year.auth_account_id, created_by: @student_year.created_by, done_ind: @student_year.done_ind, end_date: @student_year.end_date, grade_id: @student_year.grade_id, person_id: @student_year.person_id, start_date: @student_year.start_date, status_id: @student_year.status_id, updated_by: @student_year.updated_by, year_id: @student_year.year_id } }
    end

    assert_redirected_to student_year_url(StudentYear.last)
  end

  test "should show student_year" do
    get student_year_url(@student_year)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_year_url(@student_year)
    assert_response :success
  end

  test "should update student_year" do
    patch student_year_url(@student_year), params: { student_year: { auth_account_id: @student_year.auth_account_id, created_by: @student_year.created_by, done_ind: @student_year.done_ind, end_date: @student_year.end_date, grade_id: @student_year.grade_id, person_id: @student_year.person_id, start_date: @student_year.start_date, status_id: @student_year.status_id, updated_by: @student_year.updated_by, year_id: @student_year.year_id } }
    assert_redirected_to student_year_url(@student_year)
  end

  test "should destroy student_year" do
    assert_difference('StudentYear.count', -1) do
      delete student_year_url(@student_year)
    end

    assert_redirected_to student_years_url
  end
end
