class AuthOrganization < ApplicationRecord

	belongs_to :auth_account
	belongs_to :role
	belongs_to :status
	
    has_many :auth_memberships

    has_many :auth_users, through: :auth_memberships

end
