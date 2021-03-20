require "application_system_test_case"

class TaskNotesTest < ApplicationSystemTestCase
  setup do
    @task_note = task_notes(:one)
  end

  test "visiting the index" do
    visit task_notes_url
    assert_selector "h1", text: "Task Notes"
  end

  test "creating a Task note" do
    visit task_notes_url
    click_on "New Task Note"

    check "Admin view only ind" if @task_note.admin_view_only_ind
    fill_in "Created by", with: @task_note.created_by
    fill_in "Status", with: @task_note.status_id
    fill_in "Task", with: @task_note.task_id
    fill_in "Task note", with: @task_note.task_note
    fill_in "Updated by", with: @task_note.updated_by
    click_on "Create Task note"

    assert_text "Task note was successfully created"
    click_on "Back"
  end

  test "updating a Task note" do
    visit task_notes_url
    click_on "Edit", match: :first

    check "Admin view only ind" if @task_note.admin_view_only_ind
    fill_in "Created by", with: @task_note.created_by
    fill_in "Status", with: @task_note.status_id
    fill_in "Task", with: @task_note.task_id
    fill_in "Task note", with: @task_note.task_note
    fill_in "Updated by", with: @task_note.updated_by
    click_on "Update Task note"

    assert_text "Task note was successfully updated"
    click_on "Back"
  end

  test "destroying a Task note" do
    visit task_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task note was successfully destroyed"
  end
end
