# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_11_021633) do

  create_table "comments", force: :cascade do |t|
    t.string "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_id"
    t.integer "event_guest_id"
    t.index ["event_guest_id"], name: "index_comments_on_event_guest_id"
    t.index ["event_id"], name: "index_comments_on_event_id"
  end

  create_table "event_creators", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_event_creators_on_user_id"
  end

  create_table "event_guests", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "event_id"
    t.index ["event_id"], name: "index_event_guests_on_event_id"
    t.index ["user_id"], name: "index_event_guests_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "location"
    t.string "picture"
    t.boolean "publicEvent"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_creator_id"
    t.integer "organization_id"
    t.index ["event_creator_id"], name: "index_events_on_event_creator_id"
    t.index ["organization_id"], name: "index_events_on_organization_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.string "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "mailbox_id"
    t.integer "event_id"
    t.index ["event_id"], name: "index_invitations_on_event_id"
    t.index ["mailbox_id"], name: "index_invitations_on_mailbox_id"
  end

  create_table "mailbox", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mailboxes", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_mailboxes_on_user_id"
  end

  create_table "organization_administrators", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_organization_administrators_on_user_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "picture"
    t.string "bannerpicture"
    t.string "membersnumber"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "organization_administrator_id"
    t.index ["organization_administrator_id"], name: "index_organizations_on_organization_administrator_id"
  end

  create_table "replies", force: :cascade do |t|
    t.string "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_guest_id"
    t.integer "comment_id"
    t.index ["comment_id"], name: "index_replies_on_comment_id"
    t.index ["event_guest_id"], name: "index_replies_on_event_guest_id"
  end

  create_table "start_date_options", force: :cascade do |t|
    t.datetime "possiblestartdate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "start_date_poll_id"
    t.index ["start_date_poll_id"], name: "index_start_date_options_on_start_date_poll_id"
  end

  create_table "start_date_polls", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_id"
    t.index ["event_id"], name: "index_start_date_polls_on_event_id"
  end

  create_table "system_administrators", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_system_administrators_on_user_id"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "bio"
    t.string "phone"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "username"
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "organization_id"
    t.index ["organization_id"], name: "index_users_on_organization_id"
  end

  create_table "votes", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_guest_id"
    t.integer "start_date_option_id"
    t.index ["event_guest_id"], name: "index_votes_on_event_guest_id"
    t.index ["start_date_option_id"], name: "index_votes_on_start_date_option_id"
  end

  add_foreign_key "comments", "event_guests"
  add_foreign_key "comments", "events"
  add_foreign_key "event_creators", "users"
  add_foreign_key "event_guests", "events"
  add_foreign_key "event_guests", "users"
  add_foreign_key "events", "event_creators"
  add_foreign_key "events", "organizations"
  add_foreign_key "invitations", "events"
  add_foreign_key "invitations", "mailboxes"
  add_foreign_key "mailboxes", "users"
  add_foreign_key "organization_administrators", "users"
  add_foreign_key "organizations", "organization_administrators"
  add_foreign_key "replies", "comments"
  add_foreign_key "replies", "event_guests"
  add_foreign_key "start_date_options", "start_date_polls"
  add_foreign_key "start_date_polls", "events"
  add_foreign_key "system_administrators", "users"
  add_foreign_key "user_profiles", "users"
  add_foreign_key "users", "organizations"
  add_foreign_key "votes", "event_guests"
  add_foreign_key "votes", "start_date_options"
end
