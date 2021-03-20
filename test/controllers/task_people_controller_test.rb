require "test_helper"

class TaskPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task_person = task_people(:one)
  end

  test "should get index" do
    get task_people_url
    assert_response :success
  end

  test "should get new" do
    get new_task_person_url
    assert_response :success
  end

  test "should create task_person" do
    assert_difference('TaskPerson.count') do
      post task_people_url, params: { task_person: { created_by: @task_person.created_by, person_id: @task_person.person_id, person_note: @task_person.person_note, person_order: @task_person.person_order, primary_ind: @task_person.primary_ind, status_id: @task_person.status_id, task_id: @task_person.task_id, teacher_ind: @task_person.teacher_ind, updated_by: @task_person.updated_by } }
    end

    assert_redirected_to task_person_url(TaskPerson.last)
  end

  test "should show task_person" do
    get task_person_url(@task_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_person_url(@task_person)
    assert_response :success
  end

  test "should update task_person" do
    patch task_person_url(@task_person), params: { task_person: { created_by: @task_person.created_by, person_id: @task_person.person_id, person_note: @task_person.person_note, person_order: @task_person.person_order, primary_ind: @task_person.primary_ind, status_id: @task_person.status_id, task_id: @task_person.task_id, teacher_ind: @task_person.teacher_ind, updated_by: @task_person.updated_by } }
    assert_redirected_to task_person_url(@task_person)
  end

  test "should destroy task_person" do
    assert_difference('TaskPerson.count', -1) do
      delete task_person_url(@task_person)
    end

    assert_redirected_to task_people_url
  end
end
