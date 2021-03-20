json.extract! plan, :id, :plan_name, :plan_order, :plan_description, :default_ind, :status_id, :updated_by, :created_by, :created_at, :updated_at
json.url plan_url(plan, format: :json)
