ActiveAdmin.register Activity do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :auth_account_id, :activity_name, :subject_id, :activity_order, :default_time_in_hours, :default_time_in_minutes, :activity_overview, :transcript_credit, :academic_course_ind, :recurring_task_ind, :sunday_recur_ind, :monday_recur_ind, :tuesday_recur_ind, :wednesday_recur_ind, :thursday_recur_ind, :friday_recur_ind, :saturday_recur_ind, :activity_priority, :activity_note, :status_id, :updated_by, :created_by
  #
  # or
  #
  # permit_params do
  #   permitted = [:auth_account_id, :activity_name, :subject_id, :activity_order, :default_time_in_hours, :default_time_in_minutes, :activity_overview, :transcript_credit, :academic_course_ind, :recurring_task_ind, :sunday_recur_ind, :monday_recur_ind, :tuesday_recur_ind, :wednesday_recur_ind, :thursday_recur_ind, :friday_recur_ind, :saturday_recur_ind, :activity_priority, :activity_note, :status_id, :updated_by, :created_by]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  active_admin_import
  
end
