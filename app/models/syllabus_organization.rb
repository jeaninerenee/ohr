class SyllabusOrganization < ApplicationRecord

	belongs_to :syllabus
	belongs_to :organization
	belongs_to :status

	validates :organization_id, uniqueness: { scope: :syllabus_id, message: "related organization may not be duplicated for the syllabus" }

end
