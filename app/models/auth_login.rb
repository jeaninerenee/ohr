class AuthLogin < ApplicationRecord
  belongs_to :auth_user
  belongs_to :devise_user
  belongs_to :status
end
