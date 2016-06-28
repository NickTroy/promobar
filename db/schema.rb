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

ActiveRecord::Schema.define(version: 20160628122735) do

  create_table "locks", force: true do |t|
    t.boolean  "turned_on",          default: false
    t.string   "color",              default: "#000000"
    t.boolean  "disable_transition", default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "promobars", force: true do |t|
    t.integer  "bar_type"
    t.text     "text"
    t.string   "background_color"
    t.integer  "background_opacity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "button_text"
    t.string   "button_color"
    t.string   "button_hover"
    t.integer  "text_animation"
    t.integer  "alignment"
    t.string   "url_link"
    t.integer  "url_link_blank"
    t.integer  "enable_on_mobile"
    t.string   "button_shape"
    t.boolean  "button_on"
    t.boolean  "promobar_show"
    t.integer  "x_button_on"
    t.integer  "order_number"
    t.integer  "change_time"
    t.text     "height"
    t.string   "shop_domain"
    t.string   "promobar_link"
    t.integer  "promobar_link_blank"
    t.text     "custom_css"
  end

  create_table "shops", force: true do |t|
    t.string   "shopify_domain", null: false
    t.string   "shopify_token",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shops", ["shopify_domain"], name: "index_shops_on_shopify_domain", unique: true, using: :btree

  create_table "subheaders", force: true do |t|
    t.text     "text"
    t.string   "background_color"
    t.integer  "promobar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "background_opacity"
    t.integer  "text_animation"
    t.integer  "alignment"
    t.integer  "url_link_blank"
    t.integer  "enable_on_mobile"
    t.string   "button_color"
    t.string   "button_hover"
    t.string   "url_link"
    t.string   "button_text"
    t.boolean  "button_on"
    t.boolean  "promobar_show"
    t.integer  "x_button_on"
    t.string   "subheader_link"
    t.integer  "subheader_link_blank"
  end

  add_index "subheaders", ["promobar_id"], name: "index_subheaders_on_promobar_id", using: :btree

end
