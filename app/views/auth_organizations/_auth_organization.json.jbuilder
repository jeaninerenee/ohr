json.extract! auth_organization, :id, :organization_name, :auth_account_id, :role_id, :status_id, :updated_by, :created_by, :created_at, :updated_at
json.url auth_organization_url(auth_organization, format: :json)
