class TaskSyllabusRelation < ApplicationRecord
  belongs_to :task
  belongs_to :syllabus_task
  belongs_to :status
end
