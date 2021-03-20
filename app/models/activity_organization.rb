class ActivityOrganization < ApplicationRecord

	belongs_to :activity
	belongs_to :organization
	belongs_to :status

	validates :organization_id, uniqueness: { scope: :activity_id, message: "cannot have the same organization listed twice for one activity" }

end
