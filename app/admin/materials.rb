ActiveAdmin.register Material do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :auth_account_id, :material_name, :material_order, :teacher_text_ind, :test_set_ind, :solution_key_ind, :workbook_ind, :material_medium_id, :material_volume, :material_edition, :material_series, :publisher_name, :publisher_city, :publisher_state, :publish_year, :website_version, :website_publisher, :website_url, :website_publish_date, :website_access_date, :library_city, :database_service, :bibliography_ind, :material_note, :status_id, :updated_by, :created_by
  #
  # or
  #
  # permit_params do
  #   permitted = [:auth_account_id, :material_name, :material_order, :teacher_text_ind, :test_set_ind, :solution_key_ind, :workbook_ind, :material_medium_id, :material_volume, :material_edition, :material_series, :publisher_name, :publisher_city, :publisher_state, :publish_year, :website_version, :website_publisher, :website_url, :website_publish_date, :website_access_date, :library_city, :database_service, :bibliography_ind, :material_note, :status_id, :updated_by, :created_by]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  active_admin_import
  
end
