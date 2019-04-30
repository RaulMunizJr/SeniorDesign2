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

ActiveRecord::Schema.define(version: 2019_04_29_072223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sipocs", force: :cascade do |t|
    t.string "file_name"
    t.string "supplier1"
    t.string "input1"
    t.string "process_requirement1"
    t.string "process1"
    t.string "output1"
    t.string "customer_requirement1"
    t.string "customer1"
    t.string "supplier2"
    t.string "input2"
    t.string "process_requirement2"
    t.string "process2"
    t.string "output2"
    t.string "customer_requirement2"
    t.string "customer2"
    t.string "supplier3"
    t.string "input3"
    t.string "process_requirement3"
    t.string "process3"
    t.string "output3"
    t.string "customer_requirement3"
    t.string "customer3"
    t.string "supplier4"
    t.string "input4"
    t.string "process_requirement4"
    t.string "process4"
    t.string "output4"
    t.string "customer_requirement4"
    t.string "customer4"
    t.string "supplier5"
    t.string "input5"
    t.string "process_requirement5"
    t.string "process5"
    t.string "output5"
    t.string "customer_requirement5"
    t.string "customer5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vsms", force: :cascade do |t|
    t.string "file_name"
    t.integer "inventory1"
    t.string "processA"
    t.text "resourceA"
    t.string "dataA1"
    t.string "dataA2"
    t.string "dataA3"
    t.integer "inventory2"
    t.string "processB"
    t.text "resourceB"
    t.string "dataB1"
    t.string "dataB2"
    t.string "dataB3"
    t.integer "inventory3"
    t.string "processC"
    t.text "resourceC"
    t.string "dataC1"
    t.string "dataC2"
    t.string "dataC3"
    t.integer "inventory4"
    t.string "processD"
    t.text "resourceD"
    t.string "dataD1"
    t.string "dataD2"
    t.string "dataD3"
    t.integer "PLT1"
    t.integer "PLT2"
    t.integer "PLT3"
    t.integer "PLT4"
    t.integer "PT1"
    t.integer "PT2"
    t.integer "PT3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

end
