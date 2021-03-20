class AuthMembership < ApplicationRecord
  belongs_to :auth_user
  belongs_to :auth_organization
  belongs_to :role
  belongs_to :status
end
