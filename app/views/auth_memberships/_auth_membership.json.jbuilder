json.extract! auth_membership, :id, :auth_user_id, :auth_organization_id, :role_id, :account_email, :account_phone, :status_id, :updated_by, :created_by, :created_at, :updated_at
json.url auth_membership_url(auth_membership, format: :json)
