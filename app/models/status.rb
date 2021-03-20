class Status < ApplicationRecord

    has_many :roles
    has_many :auth_users
    has_many :auth_logins
    has_many :auth_accounts
    has_many :auth_organizations
    has_many :auth_memberships
    has_many :grades
    has_many :grade_types
    has_many :years
    has_many :material_media
    has_many :contributor_types
    has_many :days
    has_many :subjects
    has_many :people
    has_many :organizations
    has_many :memberships
    has_many :materials
    has_many :material_contributors
    has_many :activities
    has_many :activity_people
    has_many :activity_organizations
    has_many :activity_materials
    has_many :student_years
    has_many :student_activities
    has_many :year_weeks
    has_many :syllabuses
    has_many :syllabus_activities
    has_many :syllabus_people
    has_many :syllabus_organizations
    has_many :syllabus_tasks
    has_many :syllabus_task_activities
    has_many :syllabus_task_people
    has_many :syllabus_task_organizations
    has_many :tasks
    has_many :task_activities
    has_many :task_people
    has_many :task_organizations
    has_many :task_syllabus_relations
    has_many :task_grades
    has_many :task_notes
    has_many :notes

    validates :status_name, uniqueness: true
        
    def to_s
        "#{status_name}"
    end

end
