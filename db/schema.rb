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

ActiveRecord::Schema.define(:version => 20120122105559) do

  create_table "edge_types", :force => true do |t|
    t.string   "name",        :default => ""
    t.string   "source_type"
    t.string   "sink_type"
    t.text     "description", :default => ""
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "edge_types", ["name"], :name => "index_edge_types_on_name"

  create_table "edges", :force => true do |t|
    t.integer  "source_id"
    t.integer  "sink_id"
    t.integer  "edge_type_id"
    t.string   "name",         :default => ""
    t.text     "description",  :default => ""
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "edges", ["sink_id"], :name => "index_edges_on_sink_id"
  add_index "edges", ["source_id"], :name => "index_edges_on_source_id"

  create_table "nodes", :force => true do |t|
    t.string   "name",        :default => ""
    t.text     "description", :default => ""
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "nodes", ["name"], :name => "index_nodes_on_name"

  create_table "user_prefs", :force => true do |t|
    t.string   "user_name",            :default => "unknown"
    t.string   "comment",              :default => "none"
    t.string   "graph_direction",      :default => "LR"
    t.integer  "graph_root_node_size", :default => 16
    t.integer  "graph_root_edge_size", :default => 16
    t.integer  "graph_size_reduction", :default => 2
    t.integer  "graph_up_depth",       :default => 3
    t.integer  "graph_down_depth",     :default => 3
    t.integer  "user_id"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
