require "test_helper"

class MaterialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @material = materials(:one)
  end

  test "should get index" do
    get materials_url
    assert_response :success
  end

  test "should get new" do
    get new_material_url
    assert_response :success
  end

  test "should create material" do
    assert_difference('Material.count') do
      post materials_url, params: { material: { auth_account_id: @material.auth_account_id, bibliography_ind: @material.bibliography_ind, created_by: @material.created_by, database_service: @material.database_service, library_city: @material.library_city, material_edition: @material.material_edition, material_medium_id: @material.material_medium_id, material_name: @material.material_name, material_note: @material.material_note, material_order: @material.material_order, material_series: @material.material_series, material_volume: @material.material_volume, publish_year: @material.publish_year, publisher_city: @material.publisher_city, publisher_name: @material.publisher_name, publisher_state: @material.publisher_state, solution_key_ind: @material.solution_key_ind, status_id: @material.status_id, teacher_text_ind: @material.teacher_text_ind, test_set_ind: @material.test_set_ind, updated_by: @material.updated_by, website_access_date: @material.website_access_date, website_publish_date: @material.website_publish_date, website_publisher: @material.website_publisher, website_url: @material.website_url, website_version: @material.website_version, workbook_ind: @material.workbook_ind } }
    end

    assert_redirected_to material_url(Material.last)
  end

  test "should show material" do
    get material_url(@material)
    assert_response :success
  end

  test "should get edit" do
    get edit_material_url(@material)
    assert_response :success
  end

  test "should update material" do
    patch material_url(@material), params: { material: { auth_account_id: @material.auth_account_id, bibliography_ind: @material.bibliography_ind, created_by: @material.created_by, database_service: @material.database_service, library_city: @material.library_city, material_edition: @material.material_edition, material_medium_id: @material.material_medium_id, material_name: @material.material_name, material_note: @material.material_note, material_order: @material.material_order, material_series: @material.material_series, material_volume: @material.material_volume, publish_year: @material.publish_year, publisher_city: @material.publisher_city, publisher_name: @material.publisher_name, publisher_state: @material.publisher_state, solution_key_ind: @material.solution_key_ind, status_id: @material.status_id, teacher_text_ind: @material.teacher_text_ind, test_set_ind: @material.test_set_ind, updated_by: @material.updated_by, website_access_date: @material.website_access_date, website_publish_date: @material.website_publish_date, website_publisher: @material.website_publisher, website_url: @material.website_url, website_version: @material.website_version, workbook_ind: @material.workbook_ind } }
    assert_redirected_to material_url(@material)
  end

  test "should destroy material" do
    assert_difference('Material.count', -1) do
      delete material_url(@material)
    end

    assert_redirected_to materials_url
  end
end
