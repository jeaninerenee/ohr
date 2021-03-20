class Day < ApplicationRecord

	belongs_to :auth_account
	belongs_to :status

    has_many :syllabus_tasks
    
	validates :day_number, uniqueness: { scope: :auth_account_id, message: "day numbers must be unique within an account" }
	validates :day_long_name, uniqueness: { scope: :auth_account_id, message: "days must be unique within an account" }

end
