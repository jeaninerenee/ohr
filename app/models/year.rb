class Year < ApplicationRecord

	belongs_to :auth_account
	belongs_to :status

    has_many :student_years
    has_many :year_weeks
    
	validates :year_end, uniqueness: { scope: [:auth_account_id, :year_start], message: "years must be unique within an account" }
	validates :year_short_name, uniqueness: { scope: :auth_account_id, message: "years must be unique within an account" }

end
