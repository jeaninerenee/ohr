class AuthMembership < ApplicationRecord

	belongs_to :auth_user
	belongs_to :auth_organization
	belongs_to :role
	belongs_to :status

	validates :auth_user_id, uniqueness: { scope: :auth_organization_id, message: "should only be associated once in an organization" }
	
end
