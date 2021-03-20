require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  setup do
    @person = people(:one)
  end

  test "visiting the index" do
    visit people_url
    assert_selector "h1", text: "People"
  end

  test "creating a Person" do
    visit people_url
    click_on "New Person"

    fill_in "Auth account", with: @person.auth_account_id
    fill_in "Auth user", with: @person.auth_user_id
    fill_in "Created by", with: @person.created_by
    fill_in "First name", with: @person.first_name
    fill_in "Goes by name", with: @person.goes_by_name
    fill_in "Last name", with: @person.last_name
    fill_in "Middle name", with: @person.middle_name
    fill_in "Person note", with: @person.person_note
    fill_in "Person order", with: @person.person_order
    fill_in "Prefix name", with: @person.prefix_name
    fill_in "Status", with: @person.status_id
    check "Student ind" if @person.student_ind
    fill_in "Suffix name", with: @person.suffix_name
    fill_in "Updated by", with: @person.updated_by
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back"
  end

  test "updating a Person" do
    visit people_url
    click_on "Edit", match: :first

    fill_in "Auth account", with: @person.auth_account_id
    fill_in "Auth user", with: @person.auth_user_id
    fill_in "Created by", with: @person.created_by
    fill_in "First name", with: @person.first_name
    fill_in "Goes by name", with: @person.goes_by_name
    fill_in "Last name", with: @person.last_name
    fill_in "Middle name", with: @person.middle_name
    fill_in "Person note", with: @person.person_note
    fill_in "Person order", with: @person.person_order
    fill_in "Prefix name", with: @person.prefix_name
    fill_in "Status", with: @person.status_id
    check "Student ind" if @person.student_ind
    fill_in "Suffix name", with: @person.suffix_name
    fill_in "Updated by", with: @person.updated_by
    click_on "Update Person"

    assert_text "Person was successfully updated"
    click_on "Back"
  end

  test "destroying a Person" do
    visit people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person was successfully destroyed"
  end
end
