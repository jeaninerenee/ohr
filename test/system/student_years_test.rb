require "application_system_test_case"

class StudentYearsTest < ApplicationSystemTestCase
  setup do
    @student_year = student_years(:one)
  end

  test "visiting the index" do
    visit student_years_url
    assert_selector "h1", text: "Student Years"
  end

  test "creating a Student year" do
    visit student_years_url
    click_on "New Student Year"

    fill_in "Auth account", with: @student_year.auth_account_id
    fill_in "Created by", with: @student_year.created_by
    check "Done ind" if @student_year.done_ind
    fill_in "End date", with: @student_year.end_date
    fill_in "Grade", with: @student_year.grade_id
    fill_in "Person", with: @student_year.person_id
    fill_in "Start date", with: @student_year.start_date
    fill_in "Status", with: @student_year.status_id
    fill_in "Updated by", with: @student_year.updated_by
    fill_in "Year", with: @student_year.year_id
    click_on "Create Student year"

    assert_text "Student year was successfully created"
    click_on "Back"
  end

  test "updating a Student year" do
    visit student_years_url
    click_on "Edit", match: :first

    fill_in "Auth account", with: @student_year.auth_account_id
    fill_in "Created by", with: @student_year.created_by
    check "Done ind" if @student_year.done_ind
    fill_in "End date", with: @student_year.end_date
    fill_in "Grade", with: @student_year.grade_id
    fill_in "Person", with: @student_year.person_id
    fill_in "Start date", with: @student_year.start_date
    fill_in "Status", with: @student_year.status_id
    fill_in "Updated by", with: @student_year.updated_by
    fill_in "Year", with: @student_year.year_id
    click_on "Update Student year"

    assert_text "Student year was successfully updated"
    click_on "Back"
  end

  test "destroying a Student year" do
    visit student_years_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student year was successfully destroyed"
  end
end
