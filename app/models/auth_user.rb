class AuthUser < ApplicationRecord

	belongs_to :status

    has_one :auth_login

    has_many :auth_memberships
    has_many :people
    
    has_many :auth_organizations, through: :auth_memberships
    
	validates :username, uniqueness: true
	
end
