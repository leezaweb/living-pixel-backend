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

ActiveRecord::Schema.define(version: 2018_06_20_140621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bodies", force: :cascade do |t|
    t.bigint "site_id"
    t.index ["site_id"], name: "index_bodies_on_site_id"
  end

  create_table "body_styles", force: :cascade do |t|
    t.bigint "body_id"
    t.string "background_color"
    t.string "background_image"
    t.string "background_repeat"
    t.string "background_attachment"
    t.string "background_size"
    t.string "background_position"
    t.index ["body_id"], name: "index_body_styles_on_body_id"
  end

  create_table "element_styles", force: :cascade do |t|
    t.bigint "element_id"
    t.string "border_top_color"
    t.string "border_right_color"
    t.string "border_bottom_color"
    t.string "border_left_color"
    t.string "border_top_style"
    t.string "border_right_style"
    t.string "border_bottom_style"
    t.string "border_left_style"
    t.integer "border_top_width"
    t.integer "border_right_width"
    t.integer "border_bottom_width"
    t.integer "border_left_width"
    t.integer "border_top_left_radius"
    t.integer "border_top_right_radius"
    t.integer "border_bottom_left_radius"
    t.integer "border_bottom_right_radius"
    t.string "filter"
    t.string "object_fit"
    t.string "text_align"
    t.string "color"
    t.integer "column_count"
    t.integer "column_gap"
    t.integer "column_rule_width"
    t.string "column_rule_style"
    t.string "column_rule_color"
    t.integer "grid_column_start"
    t.integer "grid_column_end"
    t.integer "grid_row_start"
    t.integer "grid_row_end"
    t.string "background_image"
    t.string "background_repeat"
    t.string "background_attachment"
    t.string "background_size"
    t.string "background_position"
    t.index ["element_id"], name: "index_element_styles_on_element_id"
  end

  create_table "elements", force: :cascade do |t|
    t.text "inner_text"
    t.string "tag"
    t.string "src"
    t.string "key"
  end

  create_table "footer_styles", force: :cascade do |t|
    t.bigint "footer_id"
    t.string "border_top_color"
    t.string "border_top_style"
    t.integer "border_top_width"
    t.string "background_color"
    t.string "color"
    t.index ["footer_id"], name: "index_footer_styles_on_footer_id"
  end

  create_table "footers", force: :cascade do |t|
    t.bigint "site_id"
    t.string "inner_text"
    t.index ["site_id"], name: "index_footers_on_site_id"
  end

  create_table "header_styles", force: :cascade do |t|
    t.bigint "header_id"
    t.string "border_bottom_color"
    t.string "border_bottom_style"
    t.integer "border_bottom_width"
    t.string "background_color"
    t.string "color"
    t.index ["header_id"], name: "index_header_styles_on_header_id"
  end

  create_table "headers", force: :cascade do |t|
    t.bigint "site_id"
    t.string "inner_text"
    t.index ["site_id"], name: "index_headers_on_site_id"
  end

  create_table "section_elements", force: :cascade do |t|
    t.bigint "section_id"
    t.bigint "element_id"
    t.index ["element_id"], name: "index_section_elements_on_element_id"
    t.index ["section_id"], name: "index_section_elements_on_section_id"
  end

  create_table "section_styles", force: :cascade do |t|
    t.bigint "section_id"
    t.string "border_top_color"
    t.string "border_bottom_color"
    t.string "border_top_style"
    t.string "border_bottom_style"
    t.integer "border_top_width"
    t.integer "border_bottom_width"
    t.integer "border_top_left_radius"
    t.integer "border_top_right_radius"
    t.integer "border_bottom_left_radius"
    t.integer "border_bottom_right_radius"
    t.string "background_color"
    t.string "background_image"
    t.string "background_repeat"
    t.string "background_attachment"
    t.string "background_size"
    t.string "background_position"
    t.string "justify_content"
    t.string "align_content"
    t.integer "min_height"
    t.index ["section_id"], name: "index_section_styles_on_section_id"
  end

  create_table "sections", force: :cascade do |t|
    t.bigint "site_id"
    t.integer "sequence"
    t.string "key"
    t.index ["site_id"], name: "index_sections_on_site_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string "url"
    t.string "title"
    t.integer "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "key"
  end

  create_table "teams", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "site_id"
    t.index ["site_id"], name: "index_teams_on_site_id"
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
