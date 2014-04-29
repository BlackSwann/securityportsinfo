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

ActiveRecord::Schema.define(version: 20140429145911) do

  create_table "commands", force: true do |t|
    t.string   "instruction"
    t.string   "description"
    t.integer  "vulnerability_id"
    t.integer  "tool_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operative_systems", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "port_services", force: true do |t|
    t.integer  "port_id"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ports", force: true do |t|
    t.integer  "number"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_version_sos", force: true do |t|
    t.integer  "version_so_id"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_versions", force: true do |t|
    t.string   "version"
    t.date     "dateBegin"
    t.date     "dateEnd"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "type_of_service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tools", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_of_services", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "version_sos", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vulnerabilities", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.date     "discovered"
    t.integer  "service_version_id"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vulnerability_version_sos", force: true do |t|
    t.integer  "vulnerability_id"
    t.integer  "version_so_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
