require "application_system_test_case"

class SyllabusTaskPeopleTest < ApplicationSystemTestCase
  setup do
    @syllabus_task_person = syllabus_task_people(:one)
  end

  test "visiting the index" do
    visit syllabus_task_people_url
    assert_selector "h1", text: "Syllabus Task People"
  end

  test "creating a Syllabus task person" do
    visit syllabus_task_people_url
    click_on "New Syllabus Task Person"

    fill_in "Created by", with: @syllabus_task_person.created_by
    fill_in "Person", with: @syllabus_task_person.person_id
    fill_in "Person note", with: @syllabus_task_person.person_note
    fill_in "Person order", with: @syllabus_task_person.person_order
    check "Primary ind" if @syllabus_task_person.primary_ind
    fill_in "Status", with: @syllabus_task_person.status_id
    fill_in "Syllabus task", with: @syllabus_task_person.syllabus_task_id
    check "Teacher ind" if @syllabus_task_person.teacher_ind
    fill_in "Updated by", with: @syllabus_task_person.updated_by
    click_on "Create Syllabus task person"

    assert_text "Syllabus task person was successfully created"
    click_on "Back"
  end

  test "updating a Syllabus task person" do
    visit syllabus_task_people_url
    click_on "Edit", match: :first

    fill_in "Created by", with: @syllabus_task_person.created_by
    fill_in "Person", with: @syllabus_task_person.person_id
    fill_in "Person note", with: @syllabus_task_person.person_note
    fill_in "Person order", with: @syllabus_task_person.person_order
    check "Primary ind" if @syllabus_task_person.primary_ind
    fill_in "Status", with: @syllabus_task_person.status_id
    fill_in "Syllabus task", with: @syllabus_task_person.syllabus_task_id
    check "Teacher ind" if @syllabus_task_person.teacher_ind
    fill_in "Updated by", with: @syllabus_task_person.updated_by
    click_on "Update Syllabus task person"

    assert_text "Syllabus task person was successfully updated"
    click_on "Back"
  end

  test "destroying a Syllabus task person" do
    visit syllabus_task_people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Syllabus task person was successfully destroyed"
  end
end
