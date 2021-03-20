class SyllabusPerson < ApplicationRecord
  belongs_to :syllabus
  belongs_to :person
  belongs_to :status
end
