class MaterialMedium < ApplicationRecord

	belongs_to :auth_account
	belongs_to :status

    has_many :materials
    
	validates :material_medium, uniqueness: { scope: :auth_account_id, message: "material media must be unique within an account" }

end
