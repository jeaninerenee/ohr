class Grade < ApplicationRecord

	belongs_to :auth_account
	belongs_to :status

    has_many :student_years
    has_many :syllabuses
    
	validates :grade_number, uniqueness: { scope: :auth_account_id, message: "grade numbers must be unique within an account" }
	validates :grade_name, uniqueness: { scope: :auth_account_id, message: "grades must be unique within an account" }
	
end
