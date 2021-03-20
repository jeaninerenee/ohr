class ContributorType < ApplicationRecord

	belongs_to :auth_account
	belongs_to :status

    has_many :material_contributors
    
	validates :contributor_type, uniqueness: { scope: :auth_account_id, message: "contributor types must be unique within an account" }

end
