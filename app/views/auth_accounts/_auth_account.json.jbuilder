json.extract! auth_account, :id, :account_name, :plan_id, :status_id, :updated_by, :created_by, :created_at, :updated_at
json.url auth_account_url(auth_account, format: :json)
