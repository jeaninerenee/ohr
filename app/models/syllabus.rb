class Syllabus < ApplicationRecord

	belongs_to :auth_account
	belongs_to :grade
	belongs_to :activity
	belongs_to :status

    has_many :syllabus_activities
    has_many :syllabus_people
    has_many :syllabus_organizations
    has_many :syllabus_tasks

    has_many :activities, through: :syllabus_activities
    has_many :people, through: :syllabus_people
    has_many :organizations, through: :syllabus_organizations
    
	validates :activity_id, uniqueness: { scope: [:auth_account_id, :grade_id, :activity_id], message: "activity syllabus may not be duplicated for the same grade" }

end
