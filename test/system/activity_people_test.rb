require "application_system_test_case"

class ActivityPeopleTest < ApplicationSystemTestCase
  setup do
    @activity_person = activity_people(:one)
  end

  test "visiting the index" do
    visit activity_people_url
    assert_selector "h1", text: "Activity People"
  end

  test "creating a Activity person" do
    visit activity_people_url
    click_on "New Activity Person"

    fill_in "Activity", with: @activity_person.activity_id
    fill_in "Created by", with: @activity_person.created_by
    fill_in "Person", with: @activity_person.person_id
    fill_in "Person note", with: @activity_person.person_note
    fill_in "Person order", with: @activity_person.person_order
    fill_in "Status", with: @activity_person.status_id
    check "Teacher ind" if @activity_person.teacher_ind
    fill_in "Updated by", with: @activity_person.updated_by
    click_on "Create Activity person"

    assert_text "Activity person was successfully created"
    click_on "Back"
  end

  test "updating a Activity person" do
    visit activity_people_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @activity_person.activity_id
    fill_in "Created by", with: @activity_person.created_by
    fill_in "Person", with: @activity_person.person_id
    fill_in "Person note", with: @activity_person.person_note
    fill_in "Person order", with: @activity_person.person_order
    fill_in "Status", with: @activity_person.status_id
    check "Teacher ind" if @activity_person.teacher_ind
    fill_in "Updated by", with: @activity_person.updated_by
    click_on "Update Activity person"

    assert_text "Activity person was successfully updated"
    click_on "Back"
  end

  test "destroying a Activity person" do
    visit activity_people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Activity person was successfully destroyed"
  end
end
