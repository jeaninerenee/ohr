json.extract! subject, :id, :auth_account_id, :subject_name, :subject_order, :status_id, :updated_by, :created_by, :created_at, :updated_at
json.url subject_url(subject, format: :json)
