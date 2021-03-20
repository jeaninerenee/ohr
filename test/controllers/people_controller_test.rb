require "test_helper"

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get people_url
    assert_response :success
  end

  test "should get new" do
    get new_person_url
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post people_url, params: { person: { auth_account_id: @person.auth_account_id, auth_user_id: @person.auth_user_id, created_by: @person.created_by, first_name: @person.first_name, goes_by_name: @person.goes_by_name, last_name: @person.last_name, middle_name: @person.middle_name, person_note: @person.person_note, person_order: @person.person_order, prefix_name: @person.prefix_name, status_id: @person.status_id, student_ind: @person.student_ind, suffix_name: @person.suffix_name, updated_by: @person.updated_by } }
    end

    assert_redirected_to person_url(Person.last)
  end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_url(@person)
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { auth_account_id: @person.auth_account_id, auth_user_id: @person.auth_user_id, created_by: @person.created_by, first_name: @person.first_name, goes_by_name: @person.goes_by_name, last_name: @person.last_name, middle_name: @person.middle_name, person_note: @person.person_note, person_order: @person.person_order, prefix_name: @person.prefix_name, status_id: @person.status_id, student_ind: @person.student_ind, suffix_name: @person.suffix_name, updated_by: @person.updated_by } }
    assert_redirected_to person_url(@person)
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end
