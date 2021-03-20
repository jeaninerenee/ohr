require "test_helper"

class GradeTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grade_type = grade_types(:one)
  end

  test "should get index" do
    get grade_types_url
    assert_response :success
  end

  test "should get new" do
    get new_grade_type_url
    assert_response :success
  end

  test "should create grade_type" do
    assert_difference('GradeType.count') do
      post grade_types_url, params: { grade_type: { auth_account_id: @grade_type.auth_account_id, created_by: @grade_type.created_by, grade_type_name: @grade_type.grade_type_name, grade_type_order: @grade_type.grade_type_order, status_id: @grade_type.status_id, updated_by: @grade_type.updated_by } }
    end

    assert_redirected_to grade_type_url(GradeType.last)
  end

  test "should show grade_type" do
    get grade_type_url(@grade_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_grade_type_url(@grade_type)
    assert_response :success
  end

  test "should update grade_type" do
    patch grade_type_url(@grade_type), params: { grade_type: { auth_account_id: @grade_type.auth_account_id, created_by: @grade_type.created_by, grade_type_name: @grade_type.grade_type_name, grade_type_order: @grade_type.grade_type_order, status_id: @grade_type.status_id, updated_by: @grade_type.updated_by } }
    assert_redirected_to grade_type_url(@grade_type)
  end

  test "should destroy grade_type" do
    assert_difference('GradeType.count', -1) do
      delete grade_type_url(@grade_type)
    end

    assert_redirected_to grade_types_url
  end
end
