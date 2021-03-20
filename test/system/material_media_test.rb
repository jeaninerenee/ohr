require "application_system_test_case"

class MaterialMediaTest < ApplicationSystemTestCase
  setup do
    @material_medium = material_media(:one)
  end

  test "visiting the index" do
    visit material_media_url
    assert_selector "h1", text: "Material Media"
  end

  test "creating a Material medium" do
    visit material_media_url
    click_on "New Material Medium"

    fill_in "Auth account", with: @material_medium.auth_account_id
    fill_in "Created by", with: @material_medium.created_by
    check "Default ind" if @material_medium.default_ind
    fill_in "Material medium", with: @material_medium.material_medium
    fill_in "Material medium order", with: @material_medium.material_medium_order
    fill_in "Status", with: @material_medium.status_id
    fill_in "Updated by", with: @material_medium.updated_by
    click_on "Create Material medium"

    assert_text "Material medium was successfully created"
    click_on "Back"
  end

  test "updating a Material medium" do
    visit material_media_url
    click_on "Edit", match: :first

    fill_in "Auth account", with: @material_medium.auth_account_id
    fill_in "Created by", with: @material_medium.created_by
    check "Default ind" if @material_medium.default_ind
    fill_in "Material medium", with: @material_medium.material_medium
    fill_in "Material medium order", with: @material_medium.material_medium_order
    fill_in "Status", with: @material_medium.status_id
    fill_in "Updated by", with: @material_medium.updated_by
    click_on "Update Material medium"

    assert_text "Material medium was successfully updated"
    click_on "Back"
  end

  test "destroying a Material medium" do
    visit material_media_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Material medium was successfully destroyed"
  end
end
