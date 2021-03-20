class MaterialMedium < ApplicationRecord
  belongs_to :auth_account
  belongs_to :status
end
