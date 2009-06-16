# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090616190642) do

  create_table "buchungs", :force => true do |t|
    t.integer  "mitarbeiter_id"
    t.integer  "projekt_id"
    t.integer  "woche"
    t.integer  "jahr"
    t.float    "geleistet"
    t.float    "gebucht"
    t.text     "beschreibung"
    t.text     "bestaetigung"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mitarbeiters", :force => true do |t|
    t.string   "name"
    t.float    "wochenstunden"
    t.integer  "buchung_id"
    t.integer  "projekt_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projekts", :force => true do |t|
    t.integer  "mitarbeiter_id"
    t.integer  "buchung_id"
    t.string   "name"
    t.integer  "fertigstellungsgrad"
    t.integer  "einstufungsgrad"
    t.float    "budget"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
