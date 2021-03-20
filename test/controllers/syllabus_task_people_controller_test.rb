require "test_helper"

class SyllabusTaskPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @syllabus_task_person = syllabus_task_people(:one)
  end

  test "should get index" do
    get syllabus_task_people_url
    assert_response :success
  end

  test "should get new" do
    get new_syllabus_task_person_url
    assert_response :success
  end

  test "should create syllabus_task_person" do
    assert_difference('SyllabusTaskPerson.count') do
      post syllabus_task_people_url, params: { syllabus_task_person: { created_by: @syllabus_task_person.created_by, person_id: @syllabus_task_person.person_id, person_note: @syllabus_task_person.person_note, person_order: @syllabus_task_person.person_order, primary_ind: @syllabus_task_person.primary_ind, status_id: @syllabus_task_person.status_id, syllabus_task_id: @syllabus_task_person.syllabus_task_id, teacher_ind: @syllabus_task_person.teacher_ind, updated_by: @syllabus_task_person.updated_by } }
    end

    assert_redirected_to syllabus_task_person_url(SyllabusTaskPerson.last)
  end

  test "should show syllabus_task_person" do
    get syllabus_task_person_url(@syllabus_task_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_syllabus_task_person_url(@syllabus_task_person)
    assert_response :success
  end

  test "should update syllabus_task_person" do
    patch syllabus_task_person_url(@syllabus_task_person), params: { syllabus_task_person: { created_by: @syllabus_task_person.created_by, person_id: @syllabus_task_person.person_id, person_note: @syllabus_task_person.person_note, person_order: @syllabus_task_person.person_order, primary_ind: @syllabus_task_person.primary_ind, status_id: @syllabus_task_person.status_id, syllabus_task_id: @syllabus_task_person.syllabus_task_id, teacher_ind: @syllabus_task_person.teacher_ind, updated_by: @syllabus_task_person.updated_by } }
    assert_redirected_to syllabus_task_person_url(@syllabus_task_person)
  end

  test "should destroy syllabus_task_person" do
    assert_difference('SyllabusTaskPerson.count', -1) do
      delete syllabus_task_person_url(@syllabus_task_person)
    end

    assert_redirected_to syllabus_task_people_url
  end
end
