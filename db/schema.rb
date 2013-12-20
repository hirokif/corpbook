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

ActiveRecord::Schema.define(:version => 20131220040140) do

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "corps", :force => true do |t|
    t.integer  "corp_no"
    t.string   "corp_name"
    t.string   "corp_add"
    t.string   "corp_tel"
    t.string   "corp_fax"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "corp_mail"
  end

  create_table "grps", :force => true do |t|
    t.string   "grp_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "grp_no"
  end

  create_table "hoiks", :force => true do |t|
    t.integer  "corp_no"
    t.boolean  "pc"
    t.integer  "toi_no"
    t.integer  "pp"
    t.integer  "mr"
    t.integer  "egr_fr"
    t.integer  "egr_bb"
    t.integer  "egr_sr"
    t.integer  "egr_or"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "note"
  end

  create_table "line_items", :force => true do |t|
    t.integer  "corp_id"
    t.integer  "cart_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tois", :force => true do |t|
    t.integer  "toi_no"
    t.string   "toi_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "grp_no"
  end

end
