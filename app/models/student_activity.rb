class StudentActivity < ApplicationRecord
  belongs_to :auth_account
  belongs_to :student_year
  belongs_to :activity
  belongs_to :status
end
