class SyllabusActivity < ApplicationRecord
  belongs_to :syllabus
  belongs_to :activity
  belongs_to :status
end
