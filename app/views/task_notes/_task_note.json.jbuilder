json.extract! task_note, :id, :task_id, :task_note, :admin_view_only_ind, :status_id, :updated_by, :created_by, :created_at, :updated_at
json.url task_note_url(task_note, format: :json)
