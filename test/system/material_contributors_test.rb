require "application_system_test_case"

class MaterialContributorsTest < ApplicationSystemTestCase
  setup do
    @material_contributor = material_contributors(:one)
  end

  test "visiting the index" do
    visit material_contributors_url
    assert_selector "h1", text: "Material Contributors"
  end

  test "creating a Material contributor" do
    visit material_contributors_url
    click_on "New Material Contributor"

    fill_in "Contributor order", with: @material_contributor.contributor_order
    fill_in "Contributor type", with: @material_contributor.contributor_type_id
    fill_in "Created by", with: @material_contributor.created_by
    fill_in "First name", with: @material_contributor.first_name
    fill_in "Last name", with: @material_contributor.last_name
    fill_in "Material", with: @material_contributor.material_id
    fill_in "Middle name", with: @material_contributor.middle_name
    fill_in "Prefix name", with: @material_contributor.prefix_name
    fill_in "Status", with: @material_contributor.status_id
    fill_in "Suffix name", with: @material_contributor.suffix_name
    fill_in "Updated by", with: @material_contributor.updated_by
    click_on "Create Material contributor"

    assert_text "Material contributor was successfully created"
    click_on "Back"
  end

  test "updating a Material contributor" do
    visit material_contributors_url
    click_on "Edit", match: :first

    fill_in "Contributor order", with: @material_contributor.contributor_order
    fill_in "Contributor type", with: @material_contributor.contributor_type_id
    fill_in "Created by", with: @material_contributor.created_by
    fill_in "First name", with: @material_contributor.first_name
    fill_in "Last name", with: @material_contributor.last_name
    fill_in "Material", with: @material_contributor.material_id
    fill_in "Middle name", with: @material_contributor.middle_name
    fill_in "Prefix name", with: @material_contributor.prefix_name
    fill_in "Status", with: @material_contributor.status_id
    fill_in "Suffix name", with: @material_contributor.suffix_name
    fill_in "Updated by", with: @material_contributor.updated_by
    click_on "Update Material contributor"

    assert_text "Material contributor was successfully updated"
    click_on "Back"
  end

  test "destroying a Material contributor" do
    visit material_contributors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Material contributor was successfully destroyed"
  end
end
