require "test_helper"

class GradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grade = grades(:one)
  end

  test "should get index" do
    get grades_url
    assert_response :success
  end

  test "should get new" do
    get new_grade_url
    assert_response :success
  end

  test "should create grade" do
    assert_difference('Grade.count') do
      post grades_url, params: { grade: { auth_account_id: @grade.auth_account_id, created_by: @grade.created_by, grade_name: @grade.grade_name, grade_number: @grade.grade_number, grade_order: @grade.grade_order, status_id: @grade.status_id, updated_by: @grade.updated_by } }
    end

    assert_redirected_to grade_url(Grade.last)
  end

  test "should show grade" do
    get grade_url(@grade)
    assert_response :success
  end

  test "should get edit" do
    get edit_grade_url(@grade)
    assert_response :success
  end

  test "should update grade" do
    patch grade_url(@grade), params: { grade: { auth_account_id: @grade.auth_account_id, created_by: @grade.created_by, grade_name: @grade.grade_name, grade_number: @grade.grade_number, grade_order: @grade.grade_order, status_id: @grade.status_id, updated_by: @grade.updated_by } }
    assert_redirected_to grade_url(@grade)
  end

  test "should destroy grade" do
    assert_difference('Grade.count', -1) do
      delete grade_url(@grade)
    end

    assert_redirected_to grades_url
  end
end
