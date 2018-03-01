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

ActiveRecord::Schema.define(version: 20180301164304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alchemy_attachments", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "file_name", limit: 255
    t.string "file_mime_type", limit: 255
    t.integer "file_size"
    t.integer "creator_id"
    t.integer "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "file_uid", limit: 255
    t.index ["file_uid"], name: "index_alchemy_attachments_on_file_uid"
  end

  create_table "alchemy_cells", id: :serial, force: :cascade do |t|
    t.integer "page_id", null: false
    t.string "name", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["page_id"], name: "index_alchemy_cells_on_page_id"
  end

  create_table "alchemy_contents", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "essence_type", limit: 255, null: false
    t.integer "essence_id", null: false
    t.integer "element_id", null: false
    t.integer "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "creator_id"
    t.integer "updater_id"
    t.index ["element_id", "position"], name: "index_contents_on_element_id_and_position"
    t.index ["essence_id", "essence_type"], name: "index_alchemy_contents_on_essence_id_and_essence_type", unique: true
  end

  create_table "alchemy_elements", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.integer "position"
    t.integer "page_id", null: false
    t.boolean "public", default: true
    t.boolean "folded", default: false
    t.boolean "unique", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "cell_id"
    t.integer "parent_element_id"
    t.index ["cell_id"], name: "index_alchemy_elements_on_cell_id"
    t.index ["page_id", "parent_element_id"], name: "index_alchemy_elements_on_page_id_and_parent_element_id"
    t.index ["page_id", "position"], name: "index_elements_on_page_id_and_position"
  end

  create_table "alchemy_elements_alchemy_pages", id: false, force: :cascade do |t|
    t.integer "element_id"
    t.integer "page_id"
  end

  create_table "alchemy_essence_audios", id: :serial, force: :cascade do |t|
    t.integer "attachment_id"
    t.integer "width", default: 400
    t.integer "height", default: 300
    t.boolean "show_eq", default: true
    t.boolean "show_navigation", default: true
    t.integer "creator_id"
    t.integer "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alchemy_essence_booleans", id: :serial, force: :cascade do |t|
    t.boolean "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.index ["value"], name: "index_alchemy_essence_booleans_on_value"
  end

  create_table "alchemy_essence_dates", id: :serial, force: :cascade do |t|
    t.datetime "date"
    t.integer "creator_id"
    t.integer "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alchemy_essence_files", id: :serial, force: :cascade do |t|
    t.integer "attachment_id"
    t.string "title", limit: 255
    t.string "css_class", limit: 255
    t.integer "creator_id"
    t.integer "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "link_text"
    t.index ["attachment_id"], name: "index_alchemy_essence_files_on_attachment_id"
  end

  create_table "alchemy_essence_flashes", id: :serial, force: :cascade do |t|
    t.integer "attachment_id"
    t.integer "width", default: 400
    t.integer "height", default: 300
    t.string "player_version", limit: 255, default: "9.0.28"
    t.integer "creator_id"
    t.integer "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alchemy_essence_htmls", id: :serial, force: :cascade do |t|
    t.text "source"
    t.integer "creator_id"
    t.integer "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alchemy_essence_links", id: :serial, force: :cascade do |t|
    t.string "link"
    t.string "link_title"
    t.string "link_target"
    t.string "link_class_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "creator_id"
    t.integer "updater_id"
  end

  create_table "alchemy_essence_pictures", id: :serial, force: :cascade do |t|
    t.integer "picture_id"
    t.string "caption", limit: 255
    t.string "title", limit: 255
    t.string "alt_tag", limit: 255
    t.string "link", limit: 255
    t.string "link_class_name", limit: 255
    t.string "link_title", limit: 255
    t.string "css_class", limit: 255
    t.string "link_target", limit: 255
    t.integer "creator_id"
    t.integer "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "crop_from", limit: 255
    t.string "crop_size", limit: 255
    t.string "render_size", limit: 255
    t.index ["picture_id"], name: "index_alchemy_essence_pictures_on_picture_id"
  end

  create_table "alchemy_essence_richtexts", id: :serial, force: :cascade do |t|
    t.text "body"
    t.text "stripped_body"
    t.boolean "public"
    t.integer "creator_id"
    t.integer "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alchemy_essence_selects", id: :serial, force: :cascade do |t|
    t.string "value", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.index ["value"], name: "index_alchemy_essence_selects_on_value"
  end

  create_table "alchemy_essence_texts", id: :serial, force: :cascade do |t|
    t.text "body"
    t.string "link", limit: 255
    t.string "link_title", limit: 255
    t.string "link_class_name", limit: 255
    t.boolean "public", default: false
    t.string "link_target", limit: 255
    t.integer "creator_id"
    t.integer "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alchemy_essence_videos", id: :serial, force: :cascade do |t|
    t.integer "attachment_id"
    t.integer "width"
    t.integer "height"
    t.boolean "allow_fullscreen", default: true
    t.boolean "auto_play", default: false
    t.boolean "show_navigation", default: true
    t.integer "creator_id"
    t.integer "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alchemy_folded_pages", id: :serial, force: :cascade do |t|
    t.integer "page_id", null: false
    t.integer "user_id", null: false
    t.boolean "folded", default: false
    t.index ["page_id", "user_id"], name: "index_alchemy_folded_pages_on_page_id_and_user_id", unique: true
  end

  create_table "alchemy_languages", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "language_code", limit: 255
    t.string "frontpage_name", limit: 255
    t.string "page_layout", limit: 255, default: "intro"
    t.boolean "public", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "creator_id"
    t.integer "updater_id"
    t.boolean "default", default: false
    t.string "country_code", limit: 255, default: "", null: false
    t.integer "site_id", null: false
    t.string "locale"
    t.index ["language_code", "country_code"], name: "index_alchemy_languages_on_language_code_and_country_code"
    t.index ["language_code"], name: "index_alchemy_languages_on_language_code"
    t.index ["site_id"], name: "index_alchemy_languages_on_site_id"
  end

  create_table "alchemy_legacy_page_urls", id: :serial, force: :cascade do |t|
    t.string "urlname", limit: 255, null: false
    t.integer "page_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["page_id"], name: "index_alchemy_legacy_page_urls_on_page_id"
    t.index ["urlname"], name: "index_alchemy_legacy_page_urls_on_urlname"
  end

  create_table "alchemy_pages", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "urlname", limit: 255
    t.string "title", limit: 255
    t.string "language_code", limit: 255
    t.boolean "language_root"
    t.string "page_layout", limit: 255
    t.text "meta_keywords"
    t.text "meta_description"
    t.integer "lft"
    t.integer "rgt"
    t.integer "parent_id"
    t.integer "depth"
    t.boolean "visible", default: false
    t.integer "locked_by"
    t.boolean "restricted", default: false
    t.boolean "robot_index", default: true
    t.boolean "robot_follow", default: true
    t.boolean "sitemap", default: true
    t.boolean "layoutpage", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "language_id"
    t.datetime "published_at"
    t.datetime "public_on"
    t.datetime "public_until"
    t.datetime "locked_at"
    t.index ["language_id"], name: "index_pages_on_language_id"
    t.index ["locked_at", "locked_by"], name: "index_alchemy_pages_on_locked_at_and_locked_by"
    t.index ["parent_id", "lft"], name: "index_pages_on_parent_id_and_lft"
    t.index ["public_on", "public_until"], name: "index_alchemy_pages_on_public_on_and_public_until"
    t.index ["rgt"], name: "index_alchemy_pages_on_rgt"
    t.index ["urlname"], name: "index_pages_on_urlname"
  end

  create_table "alchemy_pictures", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "image_file_name", limit: 255
    t.integer "image_file_width"
    t.integer "image_file_height"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "creator_id"
    t.integer "updater_id"
    t.string "upload_hash", limit: 255
    t.string "image_file_uid", limit: 255
    t.integer "image_file_size"
    t.string "image_file_format"
  end

  create_table "alchemy_sites", id: :serial, force: :cascade do |t|
    t.string "host", limit: 255
    t.string "name", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "public", default: false
    t.text "aliases"
    t.boolean "redirect_to_primary_host"
    t.index ["host", "public"], name: "alchemy_sites_public_hosts_idx"
    t.index ["host"], name: "index_alchemy_sites_on_host"
  end

  create_table "alchemy_users", id: :serial, force: :cascade do |t|
    t.string "firstname", limit: 255
    t.string "lastname", limit: 255
    t.string "login", limit: 255
    t.string "email", limit: 255
    t.string "gender", limit: 255
    t.string "alchemy_roles", limit: 255, default: "member"
    t.string "language", limit: 255
    t.string "encrypted_password", limit: 128, default: "", null: false
    t.string "password_salt", limit: 128, default: "", null: false
    t.integer "sign_in_count", default: 0, null: false
    t.integer "failed_attempts", default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip", limit: 255
    t.string "last_sign_in_ip", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "creator_id"
    t.integer "updater_id"
    t.string "reset_password_token", limit: 255
    t.datetime "reset_password_sent_at"
    t.index ["alchemy_roles"], name: "index_alchemy_users_on_alchemy_roles"
    t.index ["email"], name: "index_alchemy_users_on_email", unique: true
    t.index ["firstname"], name: "index_alchemy_users_on_firstname"
    t.index ["lastname"], name: "index_alchemy_users_on_lastname"
    t.index ["login"], name: "index_alchemy_users_on_login", unique: true
    t.index ["reset_password_token"], name: "index_alchemy_users_on_reset_password_token", unique: true
  end

  create_table "extensions", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "url", limit: 255
    t.text "description"
    t.string "maintainer", limit: 255
    t.text "keywords"
    t.integer "creator_id"
    t.integer "updater_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "public", default: false
    t.index ["maintainer"], name: "index_extensions_on_maintainer"
    t.index ["public"], name: "index_extensions_on_public"
  end

  create_table "gutentag_taggings", id: :serial, force: :cascade do |t|
    t.integer "tag_id", null: false
    t.integer "taggable_id", null: false
    t.string "taggable_type", limit: 255, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_gutentag_taggings_on_tag_id"
    t.index ["taggable_type", "taggable_id", "tag_id"], name: "unique_taggings", unique: true
    t.index ["taggable_type", "taggable_id"], name: "index_gutentag_taggings_on_taggable_type_and_taggable_id"
  end

  create_table "gutentag_tags", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_gutentag_tags_on_name", unique: true
    t.index ["taggings_count"], name: "index_gutentag_tags_on_taggings_count"
  end

  create_table "showcases", id: :serial, force: :cascade do |t|
    t.string "title", limit: 255
    t.string "url", limit: 255
    t.string "creator", limit: 255
    t.string "screenshot_uid", limit: 255
    t.integer "creator_id"
    t.integer "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean "public", default: false
    t.string "creator_url", limit: 255
    t.index ["public"], name: "index_showcases_on_public"
  end

  add_foreign_key "alchemy_cells", "alchemy_pages", column: "page_id", name: "alchemy_cells_page_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "alchemy_contents", "alchemy_elements", column: "element_id", name: "alchemy_contents_element_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "alchemy_elements", "alchemy_cells", column: "cell_id", name: "alchemy_elements_cell_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "alchemy_elements", "alchemy_pages", column: "page_id", name: "alchemy_elements_page_id_fkey", on_update: :cascade, on_delete: :cascade
end
