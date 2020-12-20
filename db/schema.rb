# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_20_174050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "year"
    t.integer "seats"
    t.string "transmission"
    t.string "propulsion"
    t.string "mileage"
    t.string "engine"
    t.integer "power"
    t.integer "price_per_day"
    t.string "body_style"
    t.text "description"
    t.string "type_name"
    t.string "number_plate"
    t.string "slug"
    t.float "car_grade_given_by_users"
    t.string "fuel_type"
    t.string "country"
    t.string "locality"
    t.string "region"
    t.string "postcode"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "friend_id"
    t.boolean "confirmed", default: false
    t.boolean "refused", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_invitations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "lastname", default: ""
    t.string "firstname", default: ""
    t.string "email", default: ""
    t.string "username", default: ""
    t.string "password", default: ""
    t.string "profile_picture_url", default: ""
    t.boolean "member", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cars", "users"
  add_foreign_key "invitations", "users"
end
