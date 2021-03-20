class Task < ApplicationRecord

	belongs_to :auth_account
	belongs_to :student_year
	belongs_to :activity
	belongs_to :status
	
    has_many :task_activities
    has_many :task_people
    has_many :task_organizations
    has_many :task_syllabus_relations
    has_many :task_grades
    has_many :task_notes
    
    has_many :activities, through: :task_activities
    has_many :people, through: :task_people
    has_many :organizations, through: :task_organizations
    has_many :syllabus_tasks, through: :task_syllabus_relations

end
