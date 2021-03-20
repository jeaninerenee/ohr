class Activity < ApplicationRecord
  belongs_to :auth_account
  belongs_to :subject
  belongs_to :status
end
