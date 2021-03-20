class SyllabusTaskOrganization < ApplicationRecord

	belongs_to :syllabus_task
	belongs_to :organization
	belongs_to :status

	validates :organization_id, uniqueness: { scope: :syllabus_task_id, message: "organization may not be duplicated for one syllabus task" }

end
