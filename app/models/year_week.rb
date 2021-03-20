class YearWeek < ApplicationRecord
	
	belongs_to :auth_account
	belongs_to :year
	belongs_to :status

	validates :year_id, uniqueness: { scope: [:auth_account_id, :week_number], message: "school weeks must be unique for the year" }
	
end
