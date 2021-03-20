class Organization < ApplicationRecord

	belongs_to :auth_account
	belongs_to :status

    has_many :memberships
    has_many :activity_organizations
    has_many :syllabus_organizations
    has_many :syllabus_task_organizations
    has_many :task_organizations

    has_many :people, through: :memberships
    has_many :activities, through: :activity_organizations
    has_many :syllabuses, through: :syllabus_organizations
    has_many :syllabus_tasks, through: :syllabus_task_organizations
    has_many :tasks, through: :task_organizations
    
	validates :organization_name, uniqueness: { scope: :auth_account_id, message: "organization must be unique within an account" }

end
