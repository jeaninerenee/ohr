class YearWeek < ApplicationRecord
  belongs_to :auth_account
  belongs_to :year
  belongs_to :status
end
