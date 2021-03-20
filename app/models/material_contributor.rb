class MaterialContributor < ApplicationRecord

	belongs_to :material
	belongs_to :contributor_type
	belongs_to :status

	validates :contributor_type_id, uniqueness: { scope: [:material_id, :contributor_order], message: "contributor must be unique to material" }

end
