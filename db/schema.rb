# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170606012614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "state_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id", using: :btree
  end

  create_table "cities_jobs", force: :cascade do |t|
    t.integer  "city_id"
    t.integer  "job_id"
    t.integer  "number_openings"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["city_id"], name: "index_cities_jobs_on_city_id", using: :btree
    t.index ["job_id"], name: "index_cities_jobs_on_job_id", using: :btree
  end

  create_table "interests", force: :cascade do |t|
    t.string   "description",  null: false
    t.integer  "volunteer_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["volunteer_id"], name: "index_interests_on_volunteer_id", using: :btree
  end

  create_table "jobs", force: :cascade do |t|
    t.integer  "organization_id"
    t.text     "description",     null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["organization_id"], name: "index_jobs_on_organization_id", using: :btree
  end

  create_table "jobs_volunteers", force: :cascade do |t|
    t.integer  "volunteer_id"
    t.integer  "city_job_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["city_job_id"], name: "index_jobs_volunteers_on_city_job_id", using: :btree
    t.index ["volunteer_id"], name: "index_jobs_volunteers_on_volunteer_id", using: :btree
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_organizations_on_user_id", using: :btree
  end

  create_table "registrations", force: :cascade do |t|
    t.integer  "volunteer_id"
    t.integer  "city_job_id"
    t.boolean  "rejected"
    t.datetime "registration_date"
    t.text     "rejection_motive"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["city_job_id"], name: "index_registrations_on_city_job_id", using: :btree
    t.index ["volunteer_id"], name: "index_registrations_on_volunteer_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "description"
    t.integer  "rating"
    t.integer  "job_volunteer_id"
    t.integer  "type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["job_volunteer_id"], name: "index_reviews_on_job_volunteer_id", using: :btree
  end

  create_table "states", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                                null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "volunteers", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "age"
    t.integer  "city_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_volunteers_on_city_id", using: :btree
    t.index ["user_id"], name: "index_volunteers_on_user_id", using: :btree
  end

  add_foreign_key "cities", "states"
  add_foreign_key "cities_jobs", "cities"
  add_foreign_key "cities_jobs", "jobs"
  add_foreign_key "interests", "volunteers"
  add_foreign_key "jobs", "organizations"
  add_foreign_key "jobs_volunteers", "cities_jobs"
  add_foreign_key "jobs_volunteers", "volunteers"
  add_foreign_key "organizations", "users"
  add_foreign_key "registrations", "cities_jobs"
  add_foreign_key "registrations", "volunteers"
  add_foreign_key "reviews", "jobs_volunteers"
  add_foreign_key "volunteers", "cities"
  add_foreign_key "volunteers", "users"
end
