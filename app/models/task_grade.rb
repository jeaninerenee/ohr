class TaskGrade < ApplicationRecord
	
	belongs_to :task
	belongs_to :grade_type
	belongs_to :status
	
end
