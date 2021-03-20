# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.integer "auth_account_id", null: false
    t.string "activity_name", limit: 150, null: false
    t.integer "subject_id", null: false
    t.integer "activity_order", default: 0, null: false
    t.decimal "default_time_in_hours", precision: 5, scale: 2, default: "0.0", null: false
    t.integer "default_time_in_minutes", default: 0, null: false
    t.text "activity_overview"
    t.decimal "transcript_credit", precision: 5, scale: 2, default: "0.0", null: false
    t.boolean "academic_course_ind", default: false, null: false
    t.boolean "recurring_task_ind", default: false, null: false
    t.boolean "sunday_recur_ind", default: false, null: false
    t.boolean "monday_recur_ind", default: false, null: false
    t.boolean "tuesday_recur_ind", default: false, null: false
    t.boolean "wednesday_recur_ind", default: false, null: false
    t.boolean "thursday_recur_ind", default: false, null: false
    t.boolean "friday_recur_ind", default: false, null: false
    t.boolean "saturday_recur_ind", default: false, null: false
    t.integer "activity_priority", default: 0, null: false
    t.text "activity_note"
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["auth_account_id", "activity_name"], name: "uc_activities_auth_account_id_activity_name", unique: true
  end

  create_table "activity_materials", force: :cascade do |t|
    t.integer "activity_id", null: false
    t.integer "material_id", null: false
    t.integer "activity_material_order", default: 0, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["activity_id", "material_id"], name: "uc_activity_materials_activity_id_material_id", unique: true
  end

  create_table "activity_organizations", force: :cascade do |t|
    t.integer "activity_id", null: false
    t.integer "organization_id", default: 1, null: false
    t.text "organization_note"
    t.integer "organization_order", default: 0, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["activity_id", "organization_id"], name: "uc_activity_organizations_activity_id_organization_id", unique: true
  end

  create_table "activity_people", force: :cascade do |t|
    t.integer "activity_id", null: false
    t.integer "person_id", default: 1, null: false
    t.boolean "teacher_ind", default: false, null: false
    t.text "person_note"
    t.integer "person_order", default: 0, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["activity_id", "person_id"], name: "uc_activity_people_activity_id_person_id", unique: true
  end

  create_table "auth_accounts", force: :cascade do |t|
    t.string "account_name", limit: 255, null: false
    t.integer "plan_id", null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "auth_logins", force: :cascade do |t|
    t.integer "auth_user_id", null: false
    t.integer "devise_user_id", null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["auth_user_id"], name: "uc_auth_logins_auth_user_id", unique: true
    t.index ["devise_user_id"], name: "uc_auth_logins_devise_user_id", unique: true
  end

  create_table "auth_memberships", force: :cascade do |t|
    t.integer "auth_user_id", null: false
    t.integer "auth_organization_id", null: false
    t.integer "role_id", null: false
    t.string "account_email", limit: 100, null: false
    t.string "account_phone", limit: 100
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["auth_user_id", "auth_organization_id"], name: "uc_auth_memberships_auth_user_id_auth_organization_id", unique: true
  end

  create_table "auth_organizations", force: :cascade do |t|
    t.string "organization_name", limit: 255, null: false
    t.integer "auth_account_id", null: false
    t.integer "role_id", null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "auth_users", force: :cascade do |t|
    t.string "username", limit: 100, null: false
    t.string "prefix_name", limit: 90
    t.string "first_name", limit: 90
    t.string "middle_name", limit: 90
    t.string "last_name", limit: 90
    t.string "suffix_name", limit: 90
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["username"], name: "uc_auth_users_username", unique: true
  end

  create_table "contributor_types", force: :cascade do |t|
    t.integer "auth_account_id", null: false
    t.string "contributor_type", limit: 150, null: false
    t.integer "contributor_type_order", default: 0, null: false
    t.boolean "default_ind", default: false, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["auth_account_id", "contributor_type"], name: "uc_contributor_types_auth_account_id_contributor_type", unique: true
  end

  create_table "days", force: :cascade do |t|
    t.integer "auth_account_id", null: false
    t.integer "day_number", default: 0, null: false
    t.string "day_short_name", limit: 30, null: false
    t.string "day_long_name", limit: 30, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["auth_account_id", "day_long_name"], name: "uc_days_auth_account_id_day_long_name", unique: true
    t.index ["auth_account_id", "day_number"], name: "uc_days_auth_account_id_day_number", unique: true
  end

  create_table "grade_types", force: :cascade do |t|
    t.integer "auth_account_id", null: false
    t.string "grade_type_name", limit: 150, null: false
    t.integer "grade_type_order", default: 0, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["auth_account_id", "grade_type_name"], name: "uc_grade_types_auth_account_id_grade_type_name", unique: true
  end

  create_table "grades", force: :cascade do |t|
    t.integer "auth_account_id", null: false
    t.string "grade_number", limit: 2, null: false
    t.string "grade_name", limit: 150, null: false
    t.integer "grade_order", null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["auth_account_id", "grade_name"], name: "uc_grades_auth_account_id_grade_name", unique: true
    t.index ["auth_account_id", "grade_number"], name: "uc_grades_auth_account_id_grade_number", unique: true
  end

  create_table "material_contributors", force: :cascade do |t|
    t.integer "material_id", null: false
    t.integer "contributor_type_id", null: false
    t.integer "contributor_order", default: 1, null: false
    t.string "prefix_name", limit: 90
    t.string "first_name", limit: 90
    t.string "middle_name", limit: 90
    t.string "last_name", limit: 90
    t.string "suffix_name", limit: 90
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["material_id", "contributor_type_id", "contributor_order"], name: "uc_material_contributors_mt_id_cntrbtr_tp_id_cntrbtr_ord", unique: true
  end

  create_table "material_media", force: :cascade do |t|
    t.integer "auth_account_id", null: false
    t.string "material_medium", limit: 150, null: false
    t.integer "material_medium_order", default: 0, null: false
    t.boolean "default_ind", default: false, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["auth_account_id", "material_medium"], name: "uc_material_media_auth_account_id_material_medium", unique: true
  end

  create_table "materials", force: :cascade do |t|
    t.integer "auth_account_id", null: false
    t.string "material_name", limit: 150, null: false
    t.integer "material_order", default: 0, null: false
    t.boolean "teacher_text_ind", default: false, null: false
    t.boolean "test_set_ind", default: false, null: false
    t.boolean "solution_key_ind", default: false, null: false
    t.boolean "workbook_ind", default: false, null: false
    t.integer "material_medium_id", null: false
    t.string "material_volume", limit: 30, default: "0", null: false
    t.string "material_edition", limit: 30, default: "0", null: false
    t.string "material_series", limit: 30
    t.string "publisher_name", limit: 150
    t.string "publisher_city", limit: 90
    t.string "publisher_state", limit: 90
    t.integer "publish_year"
    t.string "website_version", limit: 30
    t.string "website_publisher", limit: 90
    t.string "website_url", limit: 500
    t.date "website_publish_date"
    t.date "website_access_date"
    t.string "library_city", limit: 90
    t.string "database_service", limit: 150
    t.boolean "bibliography_ind", default: true, null: false
    t.text "material_note"
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["auth_account_id", "material_medium_id", "material_name", "material_volume", "material_edition"], name: "uc_materials_auth_acct_id_mt_med_id_mt_nm_mt_vl_mt_ed", unique: true
  end

  create_table "memberships", force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "organization_id", null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["person_id", "organization_id"], name: "uc_memberships_person_id_organization_id", unique: true
  end

  create_table "notes", force: :cascade do |t|
    t.integer "auth_account_id", null: false
    t.date "note_date", null: false
    t.text "note", null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.integer "auth_account_id", null: false
    t.string "organization_name", limit: 90, null: false
    t.integer "organization_order", default: 0, null: false
    t.text "organization_note"
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["auth_account_id", "organization_name"], name: "uc_organizations_auth_account_id_organization_name", unique: true
  end

  create_table "people", force: :cascade do |t|
    t.integer "auth_account_id", null: false
    t.string "prefix_name", limit: 90
    t.string "first_name", limit: 90
    t.string "middle_name", limit: 90
    t.string "last_name", limit: 90
    t.string "suffix_name", limit: 90
    t.string "goes_by_name", limit: 150, null: false
    t.boolean "student_ind", default: false, null: false
    t.integer "auth_user_id", default: 1, null: false
    t.integer "person_order", default: 0, null: false
    t.text "person_note"
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["auth_account_id", "goes_by_name"], name: "uc_people_auth_account_id_goes_by_name", unique: true
  end

  create_table "plans", force: :cascade do |t|
    t.string "plan_name", limit: 150, null: false
    t.integer "plan_order", null: false
    t.string "plan_description", limit: 500
    t.boolean "default_ind", default: false, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["plan_name"], name: "uc_plans_plan_name", unique: true
  end

  create_table "roles", force: :cascade do |t|
    t.string "role_name", limit: 150, null: false
    t.integer "role_order", null: false
    t.string "role_description", limit: 500
    t.boolean "default_ind", default: false, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["role_name"], name: "uc_roles_role_name", unique: true
  end

  create_table "statuses", force: :cascade do |t|
    t.string "status_name", limit: 150, null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["status_name"], name: "uc_statuses_status_name", unique: true
  end

  create_table "student_activities", force: :cascade do |t|
    t.integer "auth_account_id", null: false
    t.integer "student_year_id", null: false
    t.integer "activity_id", null: false
    t.integer "student_activity_priority", default: 0, null: false
    t.boolean "done_ind", default: false, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["auth_account_id", "student_year_id", "activity_id"], name: "uc_student_activities_auth_acct_id_std_yr_id_act_id", unique: true
  end

  create_table "student_years", force: :cascade do |t|
    t.integer "auth_account_id", null: false
    t.integer "person_id", null: false
    t.integer "grade_id", null: false
    t.integer "year_id", null: false
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.boolean "done_ind", default: false, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["auth_account_id", "person_id", "year_id"], name: "uc_student_years_auth_account_id_person_id_year_id", unique: true
  end

  create_table "subjects", force: :cascade do |t|
    t.integer "auth_account_id", null: false
    t.string "subject_name", limit: 150, null: false
    t.integer "subject_order", default: 0, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["auth_account_id", "subject_name"], name: "uc_subjects_auth_account_id_subject_name", unique: true
  end

  create_table "syllabus_activities", force: :cascade do |t|
    t.integer "syllabus_id", null: false
    t.integer "activity_id", null: false
    t.text "activity_note"
    t.integer "activity_order", default: 0, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["syllabus_id", "activity_id"], name: "uc_syllabus_activities_syllabus_id_activity_id", unique: true
  end

  create_table "syllabus_organizations", force: :cascade do |t|
    t.integer "syllabus_id", null: false
    t.integer "organization_id", default: 1, null: false
    t.boolean "primary_ind", default: false, null: false
    t.text "organization_note"
    t.integer "organization_order", default: 0, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["syllabus_id", "organization_id"], name: "uc_syllabus_organizations_syllabus_id_organization_id", unique: true
  end

  create_table "syllabus_people", force: :cascade do |t|
    t.integer "syllabus_id", null: false
    t.integer "person_id", default: 1, null: false
    t.boolean "teacher_ind", default: false, null: false
    t.boolean "primary_ind", default: false, null: false
    t.text "person_note"
    t.integer "person_order", default: 0, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["syllabus_id", "person_id"], name: "uc_syllabus_people_syllabus_id_person_id", unique: true
  end

  create_table "syllabus_task_activities", force: :cascade do |t|
    t.integer "syllabus_task_id", null: false
    t.integer "activity_id", null: false
    t.boolean "primary_ind", default: false, null: false
    t.text "activity_note"
    t.integer "activity_order", default: 0, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["syllabus_task_id", "activity_id"], name: "uc_syllabus_task_activities_syllabus_task_id_activity_id", unique: true
  end

  create_table "syllabus_task_organizations", force: :cascade do |t|
    t.integer "syllabus_task_id", null: false
    t.integer "organization_id", default: 1, null: false
    t.boolean "primary_ind", default: false, null: false
    t.text "organization_note"
    t.integer "organization_order", default: 0, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["syllabus_task_id", "organization_id"], name: "uc_syllabus_task_organizations_syl_tsk_id_org_id", unique: true
  end

  create_table "syllabus_task_people", force: :cascade do |t|
    t.integer "syllabus_task_id", null: false
    t.integer "person_id", default: 1, null: false
    t.boolean "teacher_ind", default: false, null: false
    t.boolean "primary_ind", default: false, null: false
    t.text "person_note"
    t.integer "person_order", default: 0, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["syllabus_task_id", "person_id"], name: "uc_syllabus_task_people_syllabus_task_id_person_id", unique: true
  end

  create_table "syllabus_tasks", force: :cascade do |t|
    t.integer "syllabus_id", null: false
    t.integer "week_number", default: 0, null: false
    t.integer "day_id", default: 1, null: false
    t.integer "session_number", default: 0, null: false
    t.text "syllabus_task"
    t.boolean "pretest_ind", default: false, null: false
    t.boolean "test_ind", default: false, null: false
    t.boolean "quiz_ind", default: false, null: false
    t.boolean "exam_ind", default: false, null: false
    t.boolean "lab_ind", default: false, null: false
    t.boolean "in_person_ind", default: false, null: false
    t.boolean "online_ind", default: false, null: false
    t.boolean "excursion_ind", default: false, null: false
    t.integer "task_priority", default: 0, null: false
    t.decimal "task_time_in_hours", precision: 5, scale: 2, default: "0.0", null: false
    t.integer "task_time_in_minutes", default: 0, null: false
    t.text "task_note"
    t.text "teacher_note"
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["syllabus_id", "week_number", "day_id"], name: "uc_syllabus_tasks_syllabus_id_week_number_day_id", unique: true
  end

  create_table "syllabuses", force: :cascade do |t|
    t.integer "auth_account_id", null: false
    t.integer "grade_id", null: false
    t.integer "activity_id", null: false
    t.text "syllabus_name"
    t.decimal "version_number", precision: 5, scale: 2, default: "0.0", null: false
    t.text "syllabus_note"
    t.text "teacher_note"
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["auth_account_id", "grade_id", "activity_id", "version_number"], name: "uc_syllabuses_auth_acct_id_grd_id_act_id_vrsn_nmbr", unique: true
  end

  create_table "task_activities", force: :cascade do |t|
    t.integer "task_id", null: false
    t.integer "activity_id", null: false
    t.text "activity_note"
    t.integer "activity_order", default: 0, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["task_id", "activity_id"], name: "uc_task_activities_task_id_activity_id", unique: true
  end

  create_table "task_grades", force: :cascade do |t|
    t.integer "task_id", null: false
    t.integer "grade_type_id", null: false
    t.string "task_grade", limit: 10
    t.decimal "task_total_correct", precision: 5, scale: 2
    t.decimal "task_total_possible", precision: 5, scale: 2
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "task_notes", force: :cascade do |t|
    t.integer "task_id", null: false
    t.text "task_note"
    t.boolean "admin_view_only_ind", default: false, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "task_organizations", force: :cascade do |t|
    t.integer "task_id", null: false
    t.integer "organization_id", default: 1, null: false
    t.boolean "primary_ind", default: false, null: false
    t.text "organization_note"
    t.integer "organization_order", default: 0, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["task_id", "organization_id"], name: "uc_task_organizations_task_id_organization_id", unique: true
  end

  create_table "task_people", force: :cascade do |t|
    t.integer "task_id", null: false
    t.integer "person_id", default: 1, null: false
    t.boolean "teacher_ind", default: false, null: false
    t.boolean "primary_ind", default: false, null: false
    t.text "person_note"
    t.integer "person_order", default: 0, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["task_id", "person_id"], name: "uc_task_people_task_id_person_id", unique: true
  end

  create_table "task_syllabus_relations", force: :cascade do |t|
    t.integer "task_id", null: false
    t.integer "syllabus_task_id", default: 1, null: false
    t.date "syllabus_start_date", null: false
    t.date "syllabus_end_date", null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["task_id", "syllabus_task_id"], name: "uc_task_syllabus_relations_task_id_syllabus_task_id", unique: true
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "auth_account_id", null: false
    t.integer "student_year_id", null: false
    t.integer "activity_id", null: false
    t.integer "session_number", default: 0, null: false
    t.date "scheduled_start_date", null: false
    t.date "scheduled_end_date"
    t.date "actual_start_date"
    t.date "actual_end_date"
    t.text "task_description"
    t.boolean "pretest_ind", default: false, null: false
    t.boolean "test_ind", default: false, null: false
    t.boolean "quiz_ind", default: false, null: false
    t.boolean "exam_ind", default: false, null: false
    t.boolean "lab_ind", default: false, null: false
    t.boolean "in_person_ind", default: false, null: false
    t.boolean "online_ind", default: false, null: false
    t.boolean "excursion_ind", default: false, null: false
    t.integer "task_priority", default: 0, null: false
    t.decimal "task_time_in_hours", precision: 5, scale: 2, default: "0.0", null: false
    t.integer "task_time_in_minutes", default: 0, null: false
    t.boolean "absent_ind", default: false, null: false
    t.boolean "scratch_ind", default: false, null: false
    t.boolean "student_sign_off_ind", default: false, null: false
    t.boolean "teacher_sign_off_ind", default: false, null: false
    t.text "task_note"
    t.text "teacher_note"
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "year_weeks", force: :cascade do |t|
    t.integer "auth_account_id", null: false
    t.integer "year_id", null: false
    t.integer "week_number", null: false
    t.date "week_start_date", null: false
    t.date "week_end_date", null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["auth_account_id", "year_id", "week_number"], name: "uc_year_weeks_auth_account_id_year_id_week_number", unique: true
  end

  create_table "years", force: :cascade do |t|
    t.integer "auth_account_id", null: false
    t.integer "year_start", null: false
    t.integer "year_end", null: false
    t.string "year_short_name", limit: 90, null: false
    t.string "year_long_name", limit: 150, null: false
    t.boolean "default_ind", default: false, null: false
    t.integer "status_id", null: false
    t.string "updated_by", limit: 100, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "created_by", limit: 100, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["auth_account_id", "year_short_name"], name: "uc_years_auth_account_id_year_short_name", unique: true
    t.index ["auth_account_id", "year_start", "year_end"], name: "uc_years_auth_account_id_year_start_year_end", unique: true
  end

  add_foreign_key "activities", "auth_accounts", name: "fk_auth_account_id"
  add_foreign_key "activities", "statuses", name: "fk_status_id"
  add_foreign_key "activities", "subjects", name: "fk_subject_id"
  add_foreign_key "activity_materials", "activities", name: "fk_activity_id"
  add_foreign_key "activity_materials", "materials", name: "fk_material_id"
  add_foreign_key "activity_materials", "statuses", name: "fk_status_id"
  add_foreign_key "activity_organizations", "activities", name: "fk_activity_id"
  add_foreign_key "activity_organizations", "organizations", name: "fk_organization_id"
  add_foreign_key "activity_organizations", "statuses", name: "fk_status_id"
  add_foreign_key "activity_people", "activities", name: "fk_activity_id"
  add_foreign_key "activity_people", "people", name: "fk_person_id"
  add_foreign_key "activity_people", "statuses", name: "fk_status_id"
  add_foreign_key "auth_accounts", "plans", name: "fk_plan_id"
  add_foreign_key "auth_accounts", "statuses", name: "fk_status_id"
  add_foreign_key "auth_logins", "auth_users", name: "fk_auth_user_id"
  add_foreign_key "auth_logins", "statuses", name: "fk_status_id"
  add_foreign_key "auth_memberships", "auth_organizations", name: "fk_auth_organization_id"
  add_foreign_key "auth_memberships", "auth_users", name: "fk_auth_user_id"
  add_foreign_key "auth_memberships", "roles", name: "fk_role_id"
  add_foreign_key "auth_memberships", "statuses", name: "fk_status_id"
  add_foreign_key "auth_organizations", "auth_accounts", name: "fk_auth_account_id"
  add_foreign_key "auth_organizations", "roles", name: "fk_role_id"
  add_foreign_key "auth_organizations", "statuses", name: "fk_status_id"
  add_foreign_key "auth_users", "statuses", name: "fk_status_id"
  add_foreign_key "contributor_types", "auth_accounts", name: "fk_auth_account_id"
  add_foreign_key "contributor_types", "statuses", name: "fk_status_id"
  add_foreign_key "days", "auth_accounts", name: "fk_auth_account_id"
  add_foreign_key "days", "statuses", name: "fk_status_id"
  add_foreign_key "grade_types", "auth_accounts", name: "fk_auth_account_id"
  add_foreign_key "grade_types", "statuses", name: "fk_status_id"
  add_foreign_key "grades", "auth_accounts", name: "fk_auth_account_id"
  add_foreign_key "grades", "statuses", name: "fk_status_id"
  add_foreign_key "material_contributors", "contributor_types", name: "fk_contributor_type_id"
  add_foreign_key "material_contributors", "materials", name: "fk_material_id"
  add_foreign_key "material_contributors", "statuses", name: "fk_status_id"
  add_foreign_key "material_media", "auth_accounts", name: "fk_auth_account_id"
  add_foreign_key "material_media", "statuses", name: "fk_status_id"
  add_foreign_key "materials", "auth_accounts", name: "fk_auth_account_id"
  add_foreign_key "materials", "material_media", name: "fk_material_medium_id"
  add_foreign_key "materials", "statuses", name: "fk_status_id"
  add_foreign_key "memberships", "organizations", name: "fk_organization_id"
  add_foreign_key "memberships", "people", name: "fk_person_id"
  add_foreign_key "memberships", "statuses", name: "fk_status_id"
  add_foreign_key "notes", "auth_accounts", name: "fk_auth_account_id"
  add_foreign_key "notes", "statuses", name: "fk_status_id"
  add_foreign_key "organizations", "auth_accounts", name: "fk_auth_account_id"
  add_foreign_key "organizations", "statuses", name: "fk_status_id"
  add_foreign_key "people", "auth_accounts", name: "fk_auth_account_id"
  add_foreign_key "people", "auth_users", name: "fk_auth_user_id"
  add_foreign_key "people", "statuses", name: "fk_status_id"
  add_foreign_key "plans", "statuses", name: "fk_status_id"
  add_foreign_key "roles", "statuses", name: "fk_status_id"
  add_foreign_key "student_activities", "activities", name: "fk_activity_id"
  add_foreign_key "student_activities", "auth_accounts", name: "fk_auth_account_id"
  add_foreign_key "student_activities", "statuses", name: "fk_status_id"
  add_foreign_key "student_activities", "student_years", name: "fk_student_year_id"
  add_foreign_key "student_years", "auth_accounts", name: "fk_auth_account_id"
  add_foreign_key "student_years", "grades", name: "fk_grade_id"
  add_foreign_key "student_years", "people", name: "fk_person_id"
  add_foreign_key "student_years", "statuses", name: "fk_status_id"
  add_foreign_key "student_years", "years", name: "fk_year_id"
  add_foreign_key "subjects", "auth_accounts", name: "fk_auth_account_id"
  add_foreign_key "subjects", "statuses", name: "fk_status_id"
  add_foreign_key "syllabus_activities", "activities", name: "fk_activity_id"
  add_foreign_key "syllabus_activities", "statuses", name: "fk_status_id"
  add_foreign_key "syllabus_activities", "syllabuses", name: "fk_syllabus_id"
  add_foreign_key "syllabus_organizations", "organizations", name: "fk_organization_id"
  add_foreign_key "syllabus_organizations", "statuses", name: "fk_status_id"
  add_foreign_key "syllabus_organizations", "syllabuses", name: "fk_syllabus_id"
  add_foreign_key "syllabus_people", "people", name: "fk_person_id"
  add_foreign_key "syllabus_people", "statuses", name: "fk_status_id"
  add_foreign_key "syllabus_people", "syllabuses", name: "fk_syllabus_id"
  add_foreign_key "syllabus_task_activities", "activities", name: "fk_activity_id"
  add_foreign_key "syllabus_task_activities", "statuses", name: "fk_status_id"
  add_foreign_key "syllabus_task_activities", "syllabus_tasks", name: "fk_syllabus_task_id"
  add_foreign_key "syllabus_task_organizations", "organizations", name: "fk_organization_id"
  add_foreign_key "syllabus_task_organizations", "statuses", name: "fk_status_id"
  add_foreign_key "syllabus_task_organizations", "syllabus_tasks", name: "fk_syllabus_task_id"
  add_foreign_key "syllabus_task_people", "people", name: "fk_person_id"
  add_foreign_key "syllabus_task_people", "statuses", name: "fk_status_id"
  add_foreign_key "syllabus_task_people", "syllabus_tasks", name: "fk_syllabus_task_id"
  add_foreign_key "syllabus_tasks", "days", name: "fk_day_id"
  add_foreign_key "syllabus_tasks", "statuses", name: "fk_status_id"
  add_foreign_key "syllabus_tasks", "syllabuses", name: "fk_syllabus_id"
  add_foreign_key "syllabuses", "activities", name: "fk_activity_id"
  add_foreign_key "syllabuses", "auth_accounts", name: "fk_auth_account_id"
  add_foreign_key "syllabuses", "grades", name: "fk_grade_id"
  add_foreign_key "syllabuses", "statuses", name: "fk_status_id"
  add_foreign_key "task_activities", "activities", name: "fk_activity_id"
  add_foreign_key "task_activities", "statuses", name: "fk_status_id"
  add_foreign_key "task_activities", "tasks", name: "fk_task_id"
  add_foreign_key "task_grades", "grade_types", name: "fk_grade_type_id"
  add_foreign_key "task_grades", "statuses", name: "fk_status_id"
  add_foreign_key "task_grades", "tasks", name: "fk_task_id"
  add_foreign_key "task_notes", "statuses", name: "fk_status_id"
  add_foreign_key "task_notes", "tasks", name: "fk_task_id"
  add_foreign_key "task_organizations", "organizations", name: "fk_organization_id"
  add_foreign_key "task_organizations", "statuses", name: "fk_status_id"
  add_foreign_key "task_organizations", "tasks", name: "fk_task_id"
  add_foreign_key "task_people", "people", name: "fk_person_id"
  add_foreign_key "task_people", "statuses", name: "fk_status_id"
  add_foreign_key "task_people", "tasks", name: "fk_task_id"
  add_foreign_key "task_syllabus_relations", "statuses", name: "fk_status_id"
  add_foreign_key "task_syllabus_relations", "syllabus_tasks", name: "fk_syllabus_task_id"
  add_foreign_key "task_syllabus_relations", "tasks", name: "fk_task_id"
  add_foreign_key "tasks", "activities", name: "fk_activity_id"
  add_foreign_key "tasks", "auth_accounts", name: "fk_auth_account_id"
  add_foreign_key "tasks", "statuses", name: "fk_status_id"
  add_foreign_key "tasks", "student_years", name: "fk_student_year_id"
  add_foreign_key "year_weeks", "auth_accounts", name: "fk_auth_account_id"
  add_foreign_key "year_weeks", "statuses", name: "fk_status_id"
  add_foreign_key "year_weeks", "years", name: "fk_year_id"
  add_foreign_key "years", "auth_accounts", name: "fk_auth_account_id"
  add_foreign_key "years", "statuses", name: "fk_status_id"
end
