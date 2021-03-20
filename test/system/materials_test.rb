require "application_system_test_case"

class MaterialsTest < ApplicationSystemTestCase
  setup do
    @material = materials(:one)
  end

  test "visiting the index" do
    visit materials_url
    assert_selector "h1", text: "Materials"
  end

  test "creating a Material" do
    visit materials_url
    click_on "New Material"

    fill_in "Auth account", with: @material.auth_account_id
    check "Bibliography ind" if @material.bibliography_ind
    fill_in "Created by", with: @material.created_by
    fill_in "Database service", with: @material.database_service
    fill_in "Library city", with: @material.library_city
    fill_in "Material edition", with: @material.material_edition
    fill_in "Material medium", with: @material.material_medium_id
    fill_in "Material name", with: @material.material_name
    fill_in "Material note", with: @material.material_note
    fill_in "Material order", with: @material.material_order
    fill_in "Material series", with: @material.material_series
    fill_in "Material volume", with: @material.material_volume
    fill_in "Publish year", with: @material.publish_year
    fill_in "Publisher city", with: @material.publisher_city
    fill_in "Publisher name", with: @material.publisher_name
    fill_in "Publisher state", with: @material.publisher_state
    check "Solution key ind" if @material.solution_key_ind
    fill_in "Status", with: @material.status_id
    check "Teacher text ind" if @material.teacher_text_ind
    check "Test set ind" if @material.test_set_ind
    fill_in "Updated by", with: @material.updated_by
    fill_in "Website access date", with: @material.website_access_date
    fill_in "Website publish date", with: @material.website_publish_date
    fill_in "Website publisher", with: @material.website_publisher
    fill_in "Website url", with: @material.website_url
    fill_in "Website version", with: @material.website_version
    check "Workbook ind" if @material.workbook_ind
    click_on "Create Material"

    assert_text "Material was successfully created"
    click_on "Back"
  end

  test "updating a Material" do
    visit materials_url
    click_on "Edit", match: :first

    fill_in "Auth account", with: @material.auth_account_id
    check "Bibliography ind" if @material.bibliography_ind
    fill_in "Created by", with: @material.created_by
    fill_in "Database service", with: @material.database_service
    fill_in "Library city", with: @material.library_city
    fill_in "Material edition", with: @material.material_edition
    fill_in "Material medium", with: @material.material_medium_id
    fill_in "Material name", with: @material.material_name
    fill_in "Material note", with: @material.material_note
    fill_in "Material order", with: @material.material_order
    fill_in "Material series", with: @material.material_series
    fill_in "Material volume", with: @material.material_volume
    fill_in "Publish year", with: @material.publish_year
    fill_in "Publisher city", with: @material.publisher_city
    fill_in "Publisher name", with: @material.publisher_name
    fill_in "Publisher state", with: @material.publisher_state
    check "Solution key ind" if @material.solution_key_ind
    fill_in "Status", with: @material.status_id
    check "Teacher text ind" if @material.teacher_text_ind
    check "Test set ind" if @material.test_set_ind
    fill_in "Updated by", with: @material.updated_by
    fill_in "Website access date", with: @material.website_access_date
    fill_in "Website publish date", with: @material.website_publish_date
    fill_in "Website publisher", with: @material.website_publisher
    fill_in "Website url", with: @material.website_url
    fill_in "Website version", with: @material.website_version
    check "Workbook ind" if @material.workbook_ind
    click_on "Update Material"

    assert_text "Material was successfully updated"
    click_on "Back"
  end

  test "destroying a Material" do
    visit materials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Material was successfully destroyed"
  end
end
