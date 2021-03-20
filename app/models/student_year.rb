class StudentYear < ApplicationRecord

	belongs_to :auth_account
	belongs_to :person
	belongs_to :grade
	belongs_to :year
	belongs_to :status

    has_many :student_activities
    has_many :tasks

    has_many :activities, through: :student_activities
    
	validates :person_id, uniqueness: { scope: [:auth_account_id, :year_id], message: "person and school year may not be duplicated within an account" }

end
