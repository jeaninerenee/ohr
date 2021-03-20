require "application_system_test_case"

class SyllabusesTest < ApplicationSystemTestCase
  setup do
    @syllabus = syllabuses(:one)
  end

  test "visiting the index" do
    visit syllabuses_url
    assert_selector "h1", text: "Syllabuses"
  end

  test "creating a Syllabus" do
    visit syllabuses_url
    click_on "New Syllabus"

    fill_in "Activity", with: @syllabus.activity_id
    fill_in "Auth account", with: @syllabus.auth_account_id
    fill_in "Created by", with: @syllabus.created_by
    fill_in "Grade", with: @syllabus.grade_id
    fill_in "Status", with: @syllabus.status_id
    fill_in "Syllabus name", with: @syllabus.syllabus_name
    fill_in "Syllabus note", with: @syllabus.syllabus_note
    fill_in "Teacher note", with: @syllabus.teacher_note
    fill_in "Updated by", with: @syllabus.updated_by
    fill_in "Version number", with: @syllabus.version_number
    click_on "Create Syllabus"

    assert_text "Syllabus was successfully created"
    click_on "Back"
  end

  test "updating a Syllabus" do
    visit syllabuses_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @syllabus.activity_id
    fill_in "Auth account", with: @syllabus.auth_account_id
    fill_in "Created by", with: @syllabus.created_by
    fill_in "Grade", with: @syllabus.grade_id
    fill_in "Status", with: @syllabus.status_id
    fill_in "Syllabus name", with: @syllabus.syllabus_name
    fill_in "Syllabus note", with: @syllabus.syllabus_note
    fill_in "Teacher note", with: @syllabus.teacher_note
    fill_in "Updated by", with: @syllabus.updated_by
    fill_in "Version number", with: @syllabus.version_number
    click_on "Update Syllabus"

    assert_text "Syllabus was successfully updated"
    click_on "Back"
  end

  test "destroying a Syllabus" do
    visit syllabuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Syllabus was successfully destroyed"
  end
end
