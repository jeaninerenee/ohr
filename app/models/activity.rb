class Activity < ApplicationRecord

	belongs_to :auth_account
	belongs_to :subject
	belongs_to :status

    has_many :activity_people
    has_many :activity_organizations
    has_many :activity_materials
    has_many :student_activities
    has_many :syllabuses
    has_many :syllabus_activities
    has_many :syllabus_task_activities
    has_many :tasks
    has_many :task_activities
    
    has_many :people, through: :activity_people
    has_many :organizations, through: :activity_organizations
    has_many :materials, through: :activity_materials
    has_many :student_years, through: :student_activities
    has_many :syllabuses, through: :syllabus_activities
    has_many :syllabus_tasks, through: :syllabus_task_activities
    has_many :tasks, through: :task_activities
    
	validates :activity_name, uniqueness: { scope: :auth_account_id, message: "activity must be unique within an account" }

	def to_s
	"#{activity_name}"
	end

end
