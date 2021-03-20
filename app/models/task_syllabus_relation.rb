class TaskSyllabusRelation < ApplicationRecord

	belongs_to :task
	belongs_to :syllabus_task
	belongs_to :status

	validates :task_id, uniqueness: { scope: :syllabus_task_id, message: "cannot list the same syllabus task twice for the task" }

end
