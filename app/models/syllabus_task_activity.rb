class SyllabusTaskActivity < ApplicationRecord

	belongs_to :syllabus_task
	belongs_to :activity
	belongs_to :status

	validates :activity_id, uniqueness: { scope: :syllabus_task_id, message: "activity may not be duplicated for one syllabus task" }

end
