class Role < ApplicationRecord
	
	belongs_to :status
	
    has_many :auth_memberships
    has_many :auth_organizations
    
	validates :role_name, uniqueness: true
	
end
