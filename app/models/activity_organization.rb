class ActivityOrganization < ApplicationRecord
  belongs_to :activity
  belongs_to :organization
  belongs_to :status
end
