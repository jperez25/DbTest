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

ActiveRecord::Schema.define(version: 0) do

  create_table "administration", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "faculty", null: false
    t.integer "program", null: false
    t.index ["faculty"], name: "faculty_member_idx"
    t.index ["program"], name: "program_idx"
  end

  create_table "assesments", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 45, null: false
    t.integer "program", null: false
    t.index ["program"], name: "program_key_idx"
  end

  create_table "commities", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 45, null: false
  end

  create_table "documents", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 45, null: false
    t.string "path", limit: 45, null: false
  end

  create_table "faculty", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 45, null: false
    t.string "position", limit: 45, null: false
    t.integer "commitee"
    t.index ["commitee"], name: "committe_idx"
  end

  create_table "programs", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 45, null: false
    t.integer "faculty", null: false
    t.index ["faculty"], name: "faculty_mbr_idx"
    t.index ["faculty"], name: "faculty_member_idx"
  end

  add_foreign_key "administration", "faculty", column: "faculty", name: "faculty_member"
  add_foreign_key "administration", "programs", column: "program", name: "program"
  add_foreign_key "assesments", "programs", column: "program", name: "program_key"
  add_foreign_key "faculty", "commities", column: "commitee", name: "committee"
  add_foreign_key "programs", "faculty", column: "faculty", name: "faculty"
end
