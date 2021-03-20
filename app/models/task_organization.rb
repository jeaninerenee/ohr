class TaskOrganization < ApplicationRecord
  belongs_to :task
  belongs_to :organization
  belongs_to :status
end
