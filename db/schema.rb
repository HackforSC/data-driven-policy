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

ActiveRecord::Schema.define(:version => 20120713001520) do

  create_table "bea_variable_distributions", :force => true do |t|
    t.string   "key_code",     :null => false
    t.integer  "year",         :null => false
    t.decimal  "min",          :null => false
    t.decimal  "min_trim",     :null => false
    t.decimal  "max",          :null => false
    t.decimal  "max_trim",     :null => false
    t.integer  "num_outliers", :null => false
    t.decimal  "mean",         :null => false
    t.decimal  "mean_trim",    :null => false
    t.decimal  "std_dev",      :null => false
    t.decimal  "std_dev_trim", :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
