# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150222090031) do

  create_table "donations", force: :cascade do |t|
    t.string   "name",                          limit: 255
    t.text     "description",                   limit: 65535
    t.string   "weight",                        limit: 255
    t.text     "special_instructions",          limit: 65535
    t.integer  "donor_id",                      limit: 4
    t.string   "dimensions",                    limit: 255
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
    t.integer  "driver_id",                     limit: 4
    t.integer  "recipient_id",                  limit: 4
    t.text     "image",                         limit: 65535
    t.string   "driver_to_donor_handshake",     limit: 255
    t.string   "driver_to_recipient_handshake", limit: 255
    t.string   "status",                        limit: 255
    t.boolean  "completed",                     limit: 1,     default: false
    t.datetime "completed_at"
  end

  create_table "drivers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "authentication_token",   limit: 255
    t.string   "organization_name",      limit: 255
    t.string   "address_1",              limit: 255
    t.string   "address_2",              limit: 255
    t.string   "phone_number",           limit: 255
    t.text     "special_instructions",   limit: 65535
    t.string   "type",                   limit: 255
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "license_plate_number",   limit: 255
    t.string   "zipcode",                limit: 255
    t.string   "city",                   limit: 255
    t.string   "state",                  limit: 255
    t.string   "drivers_license_number", limit: 255
    t.string   "car_type",               limit: 255
    t.string   "car_make",               limit: 255
    t.string   "car_model",              limit: 255
    t.string   "car_year",               limit: 255
    t.float    "latitude",               limit: 24
    t.float    "longitude",              limit: 24
    t.float    "lng",                    limit: 24
    t.float    "lat",                    limit: 24
    t.string   "device_id",              limit: 255
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
