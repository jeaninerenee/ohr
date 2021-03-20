class Syllabus < ApplicationRecord
  belongs_to :auth_account
  belongs_to :grade
  belongs_to :activity
  belongs_to :status
end
