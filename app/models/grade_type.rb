class GradeType < ApplicationRecord

	belongs_to :auth_account
	belongs_to :status

    has_many :task_grades
    
	validates :grade_type_name, uniqueness: { scope: :auth_account_id, message: "grade types must be unique within an account" }
	
end
