require "application_system_test_case"

class SyllabusPeopleTest < ApplicationSystemTestCase
  setup do
    @syllabus_person = syllabus_people(:one)
  end

  test "visiting the index" do
    visit syllabus_people_url
    assert_selector "h1", text: "Syllabus People"
  end

  test "creating a Syllabus person" do
    visit syllabus_people_url
    click_on "New Syllabus Person"

    fill_in "Created by", with: @syllabus_person.created_by
    fill_in "Person", with: @syllabus_person.person_id
    fill_in "Person note", with: @syllabus_person.person_note
    fill_in "Person order", with: @syllabus_person.person_order
    check "Primary ind" if @syllabus_person.primary_ind
    fill_in "Status", with: @syllabus_person.status_id
    fill_in "Syllabus", with: @syllabus_person.syllabus_id
    check "Teacher ind" if @syllabus_person.teacher_ind
    fill_in "Updated by", with: @syllabus_person.updated_by
    click_on "Create Syllabus person"

    assert_text "Syllabus person was successfully created"
    click_on "Back"
  end

  test "updating a Syllabus person" do
    visit syllabus_people_url
    click_on "Edit", match: :first

    fill_in "Created by", with: @syllabus_person.created_by
    fill_in "Person", with: @syllabus_person.person_id
    fill_in "Person note", with: @syllabus_person.person_note
    fill_in "Person order", with: @syllabus_person.person_order
    check "Primary ind" if @syllabus_person.primary_ind
    fill_in "Status", with: @syllabus_person.status_id
    fill_in "Syllabus", with: @syllabus_person.syllabus_id
    check "Teacher ind" if @syllabus_person.teacher_ind
    fill_in "Updated by", with: @syllabus_person.updated_by
    click_on "Update Syllabus person"

    assert_text "Syllabus person was successfully updated"
    click_on "Back"
  end

  test "destroying a Syllabus person" do
    visit syllabus_people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Syllabus person was successfully destroyed"
  end
end
