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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130316211601) do

  create_table "assignments", :force => true do |t|
    t.integer  "creator_id"
    t.integer  "assigned_to"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "assignments", ["assigned_to"], :name => "index_assignments_on_assigned_to"
  add_index "assignments", ["creator_id", "assigned_to"], :name => "index_assignments_on_creator_id_and_assigned_to", :unique => true
  add_index "assignments", ["creator_id"], :name => "index_assignments_on_creator_id"

  create_table "pins", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "owner"
    t.integer  "user_id"
  end

  add_index "pins", ["user_id"], :name => "index_pins_on_user_id"

  create_table "sows", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "project_name"
    t.string   "contract_type"
    t.string   "portfolio"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "creator_id"
    t.integer  "assigned_to_id"
    t.decimal  "value"
  end

  add_index "sows", ["assigned_to_id"], :name => "index_sows_on_assigned_to_id"
  add_index "sows", ["creator_id"], :name => "index_sows_on_creator_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "name"
    t.boolean  "admin",                  :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
