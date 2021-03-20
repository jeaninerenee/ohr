require "test_helper"

class SyllabusPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @syllabus_person = syllabus_people(:one)
  end

  test "should get index" do
    get syllabus_people_url
    assert_response :success
  end

  test "should get new" do
    get new_syllabus_person_url
    assert_response :success
  end

  test "should create syllabus_person" do
    assert_difference('SyllabusPerson.count') do
      post syllabus_people_url, params: { syllabus_person: { created_by: @syllabus_person.created_by, person_id: @syllabus_person.person_id, person_note: @syllabus_person.person_note, person_order: @syllabus_person.person_order, primary_ind: @syllabus_person.primary_ind, status_id: @syllabus_person.status_id, syllabus_id: @syllabus_person.syllabus_id, teacher_ind: @syllabus_person.teacher_ind, updated_by: @syllabus_person.updated_by } }
    end

    assert_redirected_to syllabus_person_url(SyllabusPerson.last)
  end

  test "should show syllabus_person" do
    get syllabus_person_url(@syllabus_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_syllabus_person_url(@syllabus_person)
    assert_response :success
  end

  test "should update syllabus_person" do
    patch syllabus_person_url(@syllabus_person), params: { syllabus_person: { created_by: @syllabus_person.created_by, person_id: @syllabus_person.person_id, person_note: @syllabus_person.person_note, person_order: @syllabus_person.person_order, primary_ind: @syllabus_person.primary_ind, status_id: @syllabus_person.status_id, syllabus_id: @syllabus_person.syllabus_id, teacher_ind: @syllabus_person.teacher_ind, updated_by: @syllabus_person.updated_by } }
    assert_redirected_to syllabus_person_url(@syllabus_person)
  end

  test "should destroy syllabus_person" do
    assert_difference('SyllabusPerson.count', -1) do
      delete syllabus_person_url(@syllabus_person)
    end

    assert_redirected_to syllabus_people_url
  end
end
