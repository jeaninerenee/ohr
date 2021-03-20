require "test_helper"

class ActivityMaterialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_material = activity_materials(:one)
  end

  test "should get index" do
    get activity_materials_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_material_url
    assert_response :success
  end

  test "should create activity_material" do
    assert_difference('ActivityMaterial.count') do
      post activity_materials_url, params: { activity_material: { activity_id: @activity_material.activity_id, activity_material_order: @activity_material.activity_material_order, created_by: @activity_material.created_by, material_id: @activity_material.material_id, status_id: @activity_material.status_id, updated_by: @activity_material.updated_by } }
    end

    assert_redirected_to activity_material_url(ActivityMaterial.last)
  end

  test "should show activity_material" do
    get activity_material_url(@activity_material)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_material_url(@activity_material)
    assert_response :success
  end

  test "should update activity_material" do
    patch activity_material_url(@activity_material), params: { activity_material: { activity_id: @activity_material.activity_id, activity_material_order: @activity_material.activity_material_order, created_by: @activity_material.created_by, material_id: @activity_material.material_id, status_id: @activity_material.status_id, updated_by: @activity_material.updated_by } }
    assert_redirected_to activity_material_url(@activity_material)
  end

  test "should destroy activity_material" do
    assert_difference('ActivityMaterial.count', -1) do
      delete activity_material_url(@activity_material)
    end

    assert_redirected_to activity_materials_url
  end
end
