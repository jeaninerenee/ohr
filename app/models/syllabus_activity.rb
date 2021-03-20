class SyllabusActivity < ApplicationRecord

	belongs_to :syllabus
	belongs_to :activity
	belongs_to :status

	validates :activity_id, uniqueness: { scope: :syllabus_id, message: "related activity may not be duplicated for the syllabus" }

end
