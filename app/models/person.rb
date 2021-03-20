class Person < ApplicationRecord

	belongs_to :auth_account
	belongs_to :auth_user
	belongs_to :status

    has_many :activity_people
    has_many :student_years
    has_many :memberships
    has_many :syllabus_people
    has_many :syllabus_task_people
    has_many :task_people
    
    has_many :organizations, through: :memberships
    has_many :activities, through: :activity_people
    has_many :syllabuses, through: :syllabus_people
    has_many :syllabus_tasks, through: :syllabus_task_people
    has_many :tasks, through: :task_people
    
	validates :goes_by_name, uniqueness: { scope: :auth_account_id, message: "person must be unique within an account" }

end
