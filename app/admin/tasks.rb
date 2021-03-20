ActiveAdmin.register Task do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :auth_account_id, :student_year_id, :activity_id, :session_number, :scheduled_start_date, :scheduled_end_date, :actual_start_date, :actual_end_date, :task_description, :pretest_ind, :test_ind, :quiz_ind, :exam_ind, :lab_ind, :in_person_ind, :online_ind, :excursion_ind, :task_priority, :task_time_in_hours, :task_time_in_minutes, :absent_ind, :scratch_ind, :student_sign_off_ind, :teacher_sign_off_ind, :task_note, :teacher_note, :status_id, :updated_by, :created_by
  #
  # or
  #
  # permit_params do
  #   permitted = [:auth_account_id, :student_year_id, :activity_id, :session_number, :scheduled_start_date, :scheduled_end_date, :actual_start_date, :actual_end_date, :task_description, :pretest_ind, :test_ind, :quiz_ind, :exam_ind, :lab_ind, :in_person_ind, :online_ind, :excursion_ind, :task_priority, :task_time_in_hours, :task_time_in_minutes, :absent_ind, :scratch_ind, :student_sign_off_ind, :teacher_sign_off_ind, :task_note, :teacher_note, :status_id, :updated_by, :created_by]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  active_admin_import
  
end
