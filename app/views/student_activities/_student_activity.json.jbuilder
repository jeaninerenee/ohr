json.extract! student_activity, :id, :auth_account_id, :student_year_id, :activity_id, :student_activity_priority, :done_ind, :status_id, :updated_by, :created_by, :created_at, :updated_at
json.url student_activity_url(student_activity, format: :json)
