class SyllabusTaskPerson < ApplicationRecord

	belongs_to :syllabus_task
	belongs_to :person
	belongs_to :status

	validates :person_id, uniqueness: { scope: :syllabus_task_id, message: "people may not be duplicated for one syllabus task" }

end
