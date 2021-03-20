ActiveAdmin.register TaskGrade do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :task_id, :grade_type_id, :task_grade, :task_total_correct, :task_total_possible, :status_id, :updated_by, :created_by
  #
  # or
  #
  # permit_params do
  #   permitted = [:task_id, :grade_type_id, :task_grade, :task_total_correct, :task_total_possible, :status_id, :updated_by, :created_by]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  active_admin_import
  
end
