class Subject < ApplicationRecord

	belongs_to :auth_account
	belongs_to :status

    has_many :activities
    
	validates :subject_name, uniqueness: { scope: :auth_account_id, message: "subject must be unique within an account" }

	def to_s
	"#{subject_name}"
	end

end
