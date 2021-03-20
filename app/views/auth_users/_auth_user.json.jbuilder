json.extract! auth_user, :id, :username, :prefix_name, :first_name, :middle_name, :last_name, :suffix_name, :status_id, :updated_by, :created_by, :created_at, :updated_at
json.url auth_user_url(auth_user, format: :json)
