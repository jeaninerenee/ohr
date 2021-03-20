class ActivityMaterial < ApplicationRecord
  belongs_to :activity
  belongs_to :material
  belongs_to :status
end
