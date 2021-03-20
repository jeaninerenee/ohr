ActiveAdmin.register SyllabusTaskOrganization do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :syllabus_task_id, :organization_id, :primary_ind, :organization_note, :organization_order, :status_id, :updated_by, :created_by
  #
  # or
  #
  # permit_params do
  #   permitted = [:syllabus_task_id, :organization_id, :primary_ind, :organization_note, :organization_order, :status_id, :updated_by, :created_by]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  active_admin_import
  
end
