require "application_system_test_case"

class GradeTypesTest < ApplicationSystemTestCase
  setup do
    @grade_type = grade_types(:one)
  end

  test "visiting the index" do
    visit grade_types_url
    assert_selector "h1", text: "Grade Types"
  end

  test "creating a Grade type" do
    visit grade_types_url
    click_on "New Grade Type"

    fill_in "Auth account", with: @grade_type.auth_account_id
    fill_in "Created by", with: @grade_type.created_by
    fill_in "Grade type name", with: @grade_type.grade_type_name
    fill_in "Grade type order", with: @grade_type.grade_type_order
    fill_in "Status", with: @grade_type.status_id
    fill_in "Updated by", with: @grade_type.updated_by
    click_on "Create Grade type"

    assert_text "Grade type was successfully created"
    click_on "Back"
  end

  test "updating a Grade type" do
    visit grade_types_url
    click_on "Edit", match: :first

    fill_in "Auth account", with: @grade_type.auth_account_id
    fill_in "Created by", with: @grade_type.created_by
    fill_in "Grade type name", with: @grade_type.grade_type_name
    fill_in "Grade type order", with: @grade_type.grade_type_order
    fill_in "Status", with: @grade_type.status_id
    fill_in "Updated by", with: @grade_type.updated_by
    click_on "Update Grade type"

    assert_text "Grade type was successfully updated"
    click_on "Back"
  end

  test "destroying a Grade type" do
    visit grade_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grade type was successfully destroyed"
  end
end
