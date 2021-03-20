class TaskActivity < ApplicationRecord
  belongs_to :task
  belongs_to :activity
  belongs_to :status
end
