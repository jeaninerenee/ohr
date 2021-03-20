class StudentYear < ApplicationRecord
  belongs_to :auth_account
  belongs_to :person
  belongs_to :grade
  belongs_to :year
  belongs_to :status
end
