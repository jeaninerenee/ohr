class SyllabusOrganization < ApplicationRecord
  belongs_to :syllabus
  belongs_to :organization
  belongs_to :status
end
