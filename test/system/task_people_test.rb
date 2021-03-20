require "application_system_test_case"

class TaskPeopleTest < ApplicationSystemTestCase
  setup do
    @task_person = task_people(:one)
  end

  test "visiting the index" do
    visit task_people_url
    assert_selector "h1", text: "Task People"
  end

  test "creating a Task person" do
    visit task_people_url
    click_on "New Task Person"

    fill_in "Created by", with: @task_person.created_by
    fill_in "Person", with: @task_person.person_id
    fill_in "Person note", with: @task_person.person_note
    fill_in "Person order", with: @task_person.person_order
    check "Primary ind" if @task_person.primary_ind
    fill_in "Status", with: @task_person.status_id
    fill_in "Task", with: @task_person.task_id
    check "Teacher ind" if @task_person.teacher_ind
    fill_in "Updated by", with: @task_person.updated_by
    click_on "Create Task person"

    assert_text "Task person was successfully created"
    click_on "Back"
  end

  test "updating a Task person" do
    visit task_people_url
    click_on "Edit", match: :first

    fill_in "Created by", with: @task_person.created_by
    fill_in "Person", with: @task_person.person_id
    fill_in "Person note", with: @task_person.person_note
    fill_in "Person order", with: @task_person.person_order
    check "Primary ind" if @task_person.primary_ind
    fill_in "Status", with: @task_person.status_id
    fill_in "Task", with: @task_person.task_id
    check "Teacher ind" if @task_person.teacher_ind
    fill_in "Updated by", with: @task_person.updated_by
    click_on "Update Task person"

    assert_text "Task person was successfully updated"
    click_on "Back"
  end

  test "destroying a Task person" do
    visit task_people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task person was successfully destroyed"
  end
end
