class Material < ApplicationRecord

	belongs_to :auth_account
	belongs_to :material_medium
	belongs_to :status

    has_many :material_contributors
    has_many :activity_materials
    
    has_many :activities, through: :activity_materials

	validates :material_name, uniqueness: { scope: [:auth_account_id, :material_medium_id, :material_volume, :material_edition], message: "materials must be unique within an account" }

end
