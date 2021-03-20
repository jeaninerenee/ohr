class Membership < ApplicationRecord
  belongs_to :person
  belongs_to :organization
  belongs_to :status
end
