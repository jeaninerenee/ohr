class ActivityPerson < ApplicationRecord
  belongs_to :activity
  belongs_to :person
  belongs_to :status
end
