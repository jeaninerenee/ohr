class SyllabusTask < ApplicationRecord
  belongs_to :syllabus
  belongs_to :day
  belongs_to :status
end
