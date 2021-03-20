class TaskActivity < ApplicationRecord

	belongs_to :task
	belongs_to :activity
	belongs_to :status

	validates :activity_id, uniqueness: { scope: :task_id, message: "related activity may not be duplicated for the task" }

end
