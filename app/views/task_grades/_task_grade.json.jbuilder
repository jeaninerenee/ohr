json.extract! task_grade, :id, :task_id, :grade_type_id, :task_grade, :task_total_correct, :task_total_possible, :status_id, :updated_by, :created_by, :created_at, :updated_at
json.url task_grade_url(task_grade, format: :json)
