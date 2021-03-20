class SyllabusTaskActivity < ApplicationRecord
  belongs_to :syllabus_task
  belongs_to :activity
  belongs_to :status
end
