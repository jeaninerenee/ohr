class Person < ApplicationRecord
  belongs_to :auth_account
  belongs_to :auth_user
  belongs_to :status
end
