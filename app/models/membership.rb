class Membership < ApplicationRecord

	belongs_to :person
	belongs_to :organization
	belongs_to :status

	validates :person_id, uniqueness: { scope: :organization_id, message: "persons must be unique within an organization" }

end
