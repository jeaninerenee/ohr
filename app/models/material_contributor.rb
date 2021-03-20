class MaterialContributor < ApplicationRecord
  belongs_to :material
  belongs_to :contributor_type
  belongs_to :status
end
