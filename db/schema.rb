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

ActiveRecord::Schema.define(:version => 20121108071042) do

  create_table "armors", :force => true do |t|
    t.string   "name",       :limit => 48
    t.integer  "level"
    t.integer  "weight_id"
    t.integer  "slot_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "armors", ["slot_id"], :name => "index_armors_on_slot_id"
  add_index "armors", ["weight_id"], :name => "index_armors_on_weight_id"

  create_table "enhancements", :force => true do |t|
    t.string   "name",         :limit => 24
    t.float    "multiplier"
    t.integer  "statistic_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "enhancements", ["statistic_id"], :name => "index_enhancements_on_statistic_id"

  create_table "gear_enhancements", :force => true do |t|
    t.integer  "gear_id"
    t.string   "gear_type"
    t.integer  "enhancement_id"
    t.integer  "rating"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "gear_enhancements", ["enhancement_id"], :name => "index_gear_enhancements_on_enhancement_id"
  add_index "gear_enhancements", ["gear_id"], :name => "index_gear_enhancements_on_gear_id"

  create_table "outfits", :force => true do |t|
    t.integer  "arms_id"
    t.integer  "chest_id"
    t.integer  "feet_id"
    t.integer  "head_id"
    t.integer  "legs_id"
    t.integer  "shoulders_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "outfits", ["arms_id"], :name => "index_outfits_on_arms_id"
  add_index "outfits", ["chest_id"], :name => "index_outfits_on_chest_id"
  add_index "outfits", ["feet_id"], :name => "index_outfits_on_feet_id"
  add_index "outfits", ["head_id"], :name => "index_outfits_on_head_id"
  add_index "outfits", ["legs_id"], :name => "index_outfits_on_legs_id"
  add_index "outfits", ["shoulders_id"], :name => "index_outfits_on_shoulders_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "slots", :force => true do |t|
    t.string   "name",       :limit => 16
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "statistics", :force => true do |t|
    t.string   "name",       :limit => 36
    t.string   "kind",       :limit => 12
    t.integer  "minimum"
    t.integer  "maximum"
    t.integer  "interval"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                :default => "", :null => false
    t.string   "encrypted_password",                   :default => ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "invitation_token",       :limit => 60
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["invitation_token"], :name => "index_users_on_invitation_token"
  add_index "users", ["invited_by_id"], :name => "index_users_on_invited_by_id"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

  create_table "weights", :force => true do |t|
    t.string   "name",       :limit => 16
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

end
