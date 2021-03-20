class StudentActivity < ApplicationRecord

	belongs_to :auth_account
	belongs_to :student_year
	belongs_to :activity
	belongs_to :status

	validates :activity_id, uniqueness: { scope: [:auth_account_id, :student_year_id], message: "student activity may not be duplicated within a school year" }

end
