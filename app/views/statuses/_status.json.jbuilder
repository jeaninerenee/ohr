json.extract! status, :id, :status_name, :updated_by, :created_by, :created_at, :updated_at
json.url status_url(status, format: :json)
