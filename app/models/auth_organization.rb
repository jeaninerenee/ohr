class AuthOrganization < ApplicationRecord
  belongs_to :auth_account
  belongs_to :role
  belongs_to :status
end
