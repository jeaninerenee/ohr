class Plan < ApplicationRecord

	belongs_to :status

    has_many :auth_accounts
    
	validates :plan_name, uniqueness: true
	
end
