class ActivityPerson < ApplicationRecord

	belongs_to :activity
	belongs_to :person
	belongs_to :status

	validates :person_id, uniqueness: { scope: :activity_id, message: "cannot have the same person listed twice for one activity" }

end
