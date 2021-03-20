class AuthLogin < ApplicationRecord

	belongs_to :auth_user
	belongs_to :devise_user
	belongs_to :status

	validates :auth_user_id, uniqueness: true
	validates :devise_user_id, uniqueness: true
	
end
