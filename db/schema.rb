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

ActiveRecord::Schema.define(version: 20161025135051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agenda_items", force: :cascade do |t|
    t.date     "starts_at"
    t.date     "ends_at"
    t.string   "title"
    t.text     "intro"
    t.text     "body"
    t.string   "external_url"
    t.integer  "booking_type",                             default: 0
    t.integer  "content_page_id"
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.integer  "location_id"
    t.decimal  "price",           precision: 10, scale: 2
    t.string   "image"
    t.index ["content_page_id"], name: "index_agenda_items_on_content_page_id", using: :btree
    t.index ["location_id"], name: "index_agenda_items_on_location_id", using: :btree
    t.index ["starts_at"], name: "index_agenda_items_on_starts_at", using: :btree
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "agenda_item_id"
    t.integer  "user_id"
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "phone"
    t.string   "zip"
    t.string   "city"
    t.string   "country"
    t.datetime "paid_for_at"
    t.datetime "invoice_sent_at"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["agenda_item_id"], name: "index_bookings_on_agenda_item_id", using: :btree
    t.index ["user_id"], name: "index_bookings_on_user_id", using: :btree
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "content_blogs", force: :cascade do |t|
    t.datetime "published_at"
    t.string   "title"
    t.text     "intro"
    t.text     "body"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.string   "image"
    t.index ["user_id"], name: "index_content_blogs_on_user_id", using: :btree
  end

  create_table "content_images", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.index ["imageable_type", "imageable_id"], name: "index_content_images_on_imageable_type_and_imageable_id", using: :btree
  end

  create_table "content_news_items", force: :cascade do |t|
    t.datetime "published_at"
    t.string   "title"
    t.text     "intro"
    t.text     "body"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "image"
  end

  create_table "content_newsletters", force: :cascade do |t|
    t.datetime "published_at"
    t.string   "title"
    t.text     "intro"
    t.text     "body"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "image"
  end

  create_table "content_pages", force: :cascade do |t|
    t.string   "url"
    t.string   "title"
    t.text     "intro"
    t.text     "body"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "menu_title"
    t.integer  "menu_type",  default: 1
    t.string   "image"
    t.integer  "order"
    t.index ["url"], name: "index_content_pages_on_url", unique: true, using: :btree
  end

  create_table "content_texts", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_content_texts_on_name", unique: true, using: :btree
  end

  create_table "email_logs", force: :cascade do |t|
    t.string   "from"
    t.string   "to"
    t.string   "subject"
    t.text     "body"
    t.text     "body_plain"
    t.integer  "user_id"
    t.integer  "registration_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["registration_id"], name: "index_email_logs_on_registration_id", using: :btree
    t.index ["user_id"], name: "index_email_logs_on_user_id", using: :btree
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "zip"
    t.string   "city"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "user_type",              default: 0
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.integer  "gender"
    t.string   "phone"
    t.string   "address"
    t.string   "zip"
    t.string   "city"
    t.string   "country"
    t.date     "birthdate"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "agenda_items", "content_pages"
  add_foreign_key "agenda_items", "locations"
  add_foreign_key "bookings", "agenda_items"
  add_foreign_key "bookings", "users"
  add_foreign_key "content_blogs", "users"
  add_foreign_key "email_logs", "bookings", column: "registration_id"
  add_foreign_key "email_logs", "users"
end
