Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  ActiveAdmin.routes(self)
  
  devise_for :devise_users
  
  #get 'home/index'
  root 'home#index'
  #root 'years#index'
  
  resources :years do
    collection do
      delete 'destroy_multiple'
    end
  end
  resources :year_weeks
  resources :tasks
  resources :task_syllabus_relations
  resources :task_people
  resources :task_organizations
  resources :task_notes
  resources :task_grades
  resources :task_activities
  resources :syllabuses
  resources :syllabus_tasks
  resources :syllabus_task_people
  resources :syllabus_task_organizations
  resources :syllabus_task_activities
  resources :syllabus_people
  resources :syllabus_organizations
  resources :syllabus_activities
  resources :subjects
  resources :student_years
  resources :student_activities
  resources :statuses
  resources :roles
  resources :plans
  resources :people
  resources :organizations
  resources :notes
  resources :memberships
  resources :materials
  resources :material_media
  resources :material_contributors
  resources :grades
  resources :grade_types
  resources :days
  resources :contributor_types
  resources :auth_users
  resources :auth_organizations
  resources :auth_memberships
  resources :auth_logins
  resources :auth_accounts
  resources :activity_people
  resources :activity_organizations
  resources :activity_materials
  resources :activities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
