class SyllabusTaskOrganization < ApplicationRecord
  belongs_to :syllabus_task
  belongs_to :organization
  belongs_to :status
end
