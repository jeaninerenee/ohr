class AuthAccount < ApplicationRecord
  belongs_to :plan
  belongs_to :status
end
