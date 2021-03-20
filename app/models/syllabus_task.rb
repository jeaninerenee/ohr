class SyllabusTask < ApplicationRecord

	belongs_to :syllabus
	belongs_to :day
	belongs_to :status

    has_many :syllabus_task_activities
    has_many :syllabus_task_people
    has_many :syllabus_task_organizations
    has_many :task_syllabus_relations
    
    has_many :activities, through: :syllabus_task_activities
    has_many :people, through: :syllabus_task_people
    has_many :organizations, through: :syllabus_task_organizations
    has_many :tasks, through: :task_syllabus_relations

	validates :day_id, uniqueness: { scope: [:syllabus_id, :week_number], message: "week and day cannot be duplicated for a syllabus task" }

end
