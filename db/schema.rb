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

ActiveRecord::Schema.define(:version => 20130523140706) do

  create_table "attributes", :force => true do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "publication_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "circles", :force => true do |t|
    t.string   "name"
    t.string   "logo"
    t.string   "introduction"
    t.integer  "owner_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "circles_users", :id => false, :force => true do |t|
    t.integer "circle_id"
    t.integer "user_id"
  end

  create_table "orders", :force => true do |t|
    t.integer  "publication_id"
    t.integer  "reader_id"
    t.date     "auditDate"
    t.date     "revertDate"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "state"
  end

  create_table "publications", :force => true do |t|
    t.string   "isbn"
    t.string   "title"
    t.string   "email"
    t.string   "phone"
    t.string   "summary"
    t.string   "cover"
    t.string   "doubanURL"
    t.integer  "state"
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.integer  "publication_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "screen_name"
    t.string   "username"
    t.string   "phone"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
