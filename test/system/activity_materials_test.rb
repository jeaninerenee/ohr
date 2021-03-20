require "application_system_test_case"

class ActivityMaterialsTest < ApplicationSystemTestCase
  setup do
    @activity_material = activity_materials(:one)
  end

  test "visiting the index" do
    visit activity_materials_url
    assert_selector "h1", text: "Activity Materials"
  end

  test "creating a Activity material" do
    visit activity_materials_url
    click_on "New Activity Material"

    fill_in "Activity", with: @activity_material.activity_id
    fill_in "Activity material order", with: @activity_material.activity_material_order
    fill_in "Created by", with: @activity_material.created_by
    fill_in "Material", with: @activity_material.material_id
    fill_in "Status", with: @activity_material.status_id
    fill_in "Updated by", with: @activity_material.updated_by
    click_on "Create Activity material"

    assert_text "Activity material was successfully created"
    click_on "Back"
  end

  test "updating a Activity material" do
    visit activity_materials_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @activity_material.activity_id
    fill_in "Activity material order", with: @activity_material.activity_material_order
    fill_in "Created by", with: @activity_material.created_by
    fill_in "Material", with: @activity_material.material_id
    fill_in "Status", with: @activity_material.status_id
    fill_in "Updated by", with: @activity_material.updated_by
    click_on "Update Activity material"

    assert_text "Activity material was successfully updated"
    click_on "Back"
  end

  test "destroying a Activity material" do
    visit activity_materials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Activity material was successfully destroyed"
  end
end
