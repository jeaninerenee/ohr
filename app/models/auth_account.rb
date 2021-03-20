class AuthAccount < ApplicationRecord

    belongs_to :plan
	belongs_to :status

	has_many :auth_organizations
    has_many :grades
    has_many :grade_types
    has_many :years
    has_many :material_media
    has_many :contributor_types
    has_many :days
    has_many :subjects
    has_many :people
    has_many :organizations
    has_many :materials
    has_many :activities
    has_many :student_years
    has_many :student_activities
    has_many :year_weeks
    has_many :syllabuses
    has_many :tasks
    has_many :notes

	def to_s
		"#{account_name}"
	end
	
end
