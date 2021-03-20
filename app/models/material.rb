class Material < ApplicationRecord
  belongs_to :auth_account
  belongs_to :material_medium
  belongs_to :status
end
