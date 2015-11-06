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

ActiveRecord::Schema.define(version: 20151106155337) do

  create_table "promobars", force: true do |t|
    t.integer  "bar_type"
    t.string   "text"
    t.string   "font"
    t.integer  "font_size"
    t.integer  "font_regular"
    t.integer  "font_bold"
    t.integer  "font_italic"
    t.integer  "tracking"
    t.integer  "leading"
    t.integer  "text_formatting"
    t.string   "text_color"
    t.string   "background_color"
    t.integer  "background_opacity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "button_text"
    t.string   "button_color"
    t.string   "button_hover"
    t.string   "button_font"
    t.integer  "button_font_size"
    t.integer  "button_tracking"
    t.integer  "button_leading"
    t.integer  "button_font_regular"
    t.integer  "button_font_bold"
    t.integer  "button_font_italic"
    t.string   "button_text_color"
    t.integer  "text_animation"
    t.integer  "size"
    t.integer  "alignment"
    t.integer  "display_delay"
    t.string   "url_link"
    t.integer  "url_link_blank"
    t.integer  "enable_on_mobile"
    t.string   "button_shape"
    t.integer  "position"
    t.integer  "font_underlined"
    t.boolean  "button_on"
    t.boolean  "promobar_show"
  end

  create_table "shops", force: true do |t|
    t.string   "shopify_domain", null: false
    t.string   "shopify_token",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shops", ["shopify_domain"], name: "index_shops_on_shopify_domain", unique: true

end
