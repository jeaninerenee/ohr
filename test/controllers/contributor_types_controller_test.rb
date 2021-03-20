require "test_helper"

class ContributorTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contributor_type = contributor_types(:one)
  end

  test "should get index" do
    get contributor_types_url
    assert_response :success
  end

  test "should get new" do
    get new_contributor_type_url
    assert_response :success
  end

  test "should create contributor_type" do
    assert_difference('ContributorType.count') do
      post contributor_types_url, params: { contributor_type: { auth_account_id: @contributor_type.auth_account_id, contributor_type: @contributor_type.contributor_type, contributor_type_order: @contributor_type.contributor_type_order, created_by: @contributor_type.created_by, default_ind: @contributor_type.default_ind, status_id: @contributor_type.status_id, updated_by: @contributor_type.updated_by } }
    end

    assert_redirected_to contributor_type_url(ContributorType.last)
  end

  test "should show contributor_type" do
    get contributor_type_url(@contributor_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_contributor_type_url(@contributor_type)
    assert_response :success
  end

  test "should update contributor_type" do
    patch contributor_type_url(@contributor_type), params: { contributor_type: { auth_account_id: @contributor_type.auth_account_id, contributor_type: @contributor_type.contributor_type, contributor_type_order: @contributor_type.contributor_type_order, created_by: @contributor_type.created_by, default_ind: @contributor_type.default_ind, status_id: @contributor_type.status_id, updated_by: @contributor_type.updated_by } }
    assert_redirected_to contributor_type_url(@contributor_type)
  end

  test "should destroy contributor_type" do
    assert_difference('ContributorType.count', -1) do
      delete contributor_type_url(@contributor_type)
    end

    assert_redirected_to contributor_types_url
  end
end
