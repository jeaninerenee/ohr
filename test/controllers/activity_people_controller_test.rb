require "test_helper"

class ActivityPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_person = activity_people(:one)
  end

  test "should get index" do
    get activity_people_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_person_url
    assert_response :success
  end

  test "should create activity_person" do
    assert_difference('ActivityPerson.count') do
      post activity_people_url, params: { activity_person: { activity_id: @activity_person.activity_id, created_by: @activity_person.created_by, person_id: @activity_person.person_id, person_note: @activity_person.person_note, person_order: @activity_person.person_order, status_id: @activity_person.status_id, teacher_ind: @activity_person.teacher_ind, updated_by: @activity_person.updated_by } }
    end

    assert_redirected_to activity_person_url(ActivityPerson.last)
  end

  test "should show activity_person" do
    get activity_person_url(@activity_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_person_url(@activity_person)
    assert_response :success
  end

  test "should update activity_person" do
    patch activity_person_url(@activity_person), params: { activity_person: { activity_id: @activity_person.activity_id, created_by: @activity_person.created_by, person_id: @activity_person.person_id, person_note: @activity_person.person_note, person_order: @activity_person.person_order, status_id: @activity_person.status_id, teacher_ind: @activity_person.teacher_ind, updated_by: @activity_person.updated_by } }
    assert_redirected_to activity_person_url(@activity_person)
  end

  test "should destroy activity_person" do
    assert_difference('ActivityPerson.count', -1) do
      delete activity_person_url(@activity_person)
    end

    assert_redirected_to activity_people_url
  end
end
