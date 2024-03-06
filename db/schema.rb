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

ActiveRecord::Schema[7.1].define(version: 2024_03_06_220231) do
  create_table "beneficiaries", force: :cascade do |t|
    t.string "name"
    t.string "identification_documen"
    t.string "contact_number"
    t.string "contract_type"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "laptops", force: :cascade do |t|
    t.string "serial_number"
    t.string "listed_number"
    t.string "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "links", force: :cascade do |t|
    t.date "init_date"
    t.integer "person_id", null: false
    t.integer "laptop_id", null: false
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["laptop_id"], name: "index_links_on_laptop_id"
    t.index ["person_id"], name: "index_links_on_person_id"
  end

  add_foreign_key "links", "laptops"
  add_foreign_key "links", "people"
end
