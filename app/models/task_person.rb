class TaskPerson < ApplicationRecord

	belongs_to :task
	belongs_to :person
	belongs_to :status

	validates :person_id, uniqueness: { scope: :task_id, message: "related person may not be duplicated for the task" }

end
