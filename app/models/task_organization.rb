class TaskOrganization < ApplicationRecord

	belongs_to :task
	belongs_to :organization
	belongs_to :status

	validates :organization_id, uniqueness: { scope: :task_id, message: "related organization may not be duplicated for the task" }

end
