class SyllabusTaskPerson < ApplicationRecord
  belongs_to :syllabus_task
  belongs_to :person
  belongs_to :status
end
