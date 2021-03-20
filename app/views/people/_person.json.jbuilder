json.extract! person, :id, :auth_account_id, :prefix_name, :first_name, :middle_name, :last_name, :suffix_name, :goes_by_name, :student_ind, :auth_user_id, :person_order, :person_note, :status_id, :updated_by, :created_by, :created_at, :updated_at
json.url person_url(person, format: :json)
