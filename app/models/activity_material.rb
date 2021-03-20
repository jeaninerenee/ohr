class ActivityMaterial < ApplicationRecord

	belongs_to :activity
	belongs_to :material
	belongs_to :status

	validates :material_id, uniqueness: { scope: :activity_id, message: "cannot have the same material associated twice with an activity" }

end
