class SyllabusPerson < ApplicationRecord

	belongs_to :syllabus
	belongs_to :person
	belongs_to :status

	validates :person_id, uniqueness: { scope: :syllabus_id, message: "related person may not be duplicated for the syllabus" }

end
