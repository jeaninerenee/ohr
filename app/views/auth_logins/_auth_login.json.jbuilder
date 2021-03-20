json.extract! auth_login, :id, :auth_user_id, :devise_user_id, :status_id, :updated_by, :created_by, :created_at, :updated_at
json.url auth_login_url(auth_login, format: :json)
