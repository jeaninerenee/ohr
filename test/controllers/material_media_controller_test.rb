require "test_helper"

class MaterialMediaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @material_medium = material_media(:one)
  end

  test "should get index" do
    get material_media_url
    assert_response :success
  end

  test "should get new" do
    get new_material_medium_url
    assert_response :success
  end

  test "should create material_medium" do
    assert_difference('MaterialMedium.count') do
      post material_media_url, params: { material_medium: { auth_account_id: @material_medium.auth_account_id, created_by: @material_medium.created_by, default_ind: @material_medium.default_ind, material_medium: @material_medium.material_medium, material_medium_order: @material_medium.material_medium_order, status_id: @material_medium.status_id, updated_by: @material_medium.updated_by } }
    end

    assert_redirected_to material_medium_url(MaterialMedium.last)
  end

  test "should show material_medium" do
    get material_medium_url(@material_medium)
    assert_response :success
  end

  test "should get edit" do
    get edit_material_medium_url(@material_medium)
    assert_response :success
  end

  test "should update material_medium" do
    patch material_medium_url(@material_medium), params: { material_medium: { auth_account_id: @material_medium.auth_account_id, created_by: @material_medium.created_by, default_ind: @material_medium.default_ind, material_medium: @material_medium.material_medium, material_medium_order: @material_medium.material_medium_order, status_id: @material_medium.status_id, updated_by: @material_medium.updated_by } }
    assert_redirected_to material_medium_url(@material_medium)
  end

  test "should destroy material_medium" do
    assert_difference('MaterialMedium.count', -1) do
      delete material_medium_url(@material_medium)
    end

    assert_redirected_to material_media_url
  end
end
