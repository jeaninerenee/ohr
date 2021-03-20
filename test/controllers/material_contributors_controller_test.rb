require "test_helper"

class MaterialContributorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @material_contributor = material_contributors(:one)
  end

  test "should get index" do
    get material_contributors_url
    assert_response :success
  end

  test "should get new" do
    get new_material_contributor_url
    assert_response :success
  end

  test "should create material_contributor" do
    assert_difference('MaterialContributor.count') do
      post material_contributors_url, params: { material_contributor: { contributor_order: @material_contributor.contributor_order, contributor_type_id: @material_contributor.contributor_type_id, created_by: @material_contributor.created_by, first_name: @material_contributor.first_name, last_name: @material_contributor.last_name, material_id: @material_contributor.material_id, middle_name: @material_contributor.middle_name, prefix_name: @material_contributor.prefix_name, status_id: @material_contributor.status_id, suffix_name: @material_contributor.suffix_name, updated_by: @material_contributor.updated_by } }
    end

    assert_redirected_to material_contributor_url(MaterialContributor.last)
  end

  test "should show material_contributor" do
    get material_contributor_url(@material_contributor)
    assert_response :success
  end

  test "should get edit" do
    get edit_material_contributor_url(@material_contributor)
    assert_response :success
  end

  test "should update material_contributor" do
    patch material_contributor_url(@material_contributor), params: { material_contributor: { contributor_order: @material_contributor.contributor_order, contributor_type_id: @material_contributor.contributor_type_id, created_by: @material_contributor.created_by, first_name: @material_contributor.first_name, last_name: @material_contributor.last_name, material_id: @material_contributor.material_id, middle_name: @material_contributor.middle_name, prefix_name: @material_contributor.prefix_name, status_id: @material_contributor.status_id, suffix_name: @material_contributor.suffix_name, updated_by: @material_contributor.updated_by } }
    assert_redirected_to material_contributor_url(@material_contributor)
  end

  test "should destroy material_contributor" do
    assert_difference('MaterialContributor.count', -1) do
      delete material_contributor_url(@material_contributor)
    end

    assert_redirected_to material_contributors_url
  end
end
