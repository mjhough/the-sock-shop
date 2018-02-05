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

ActiveRecord::Schema.define(version: 20180204210929) do

  create_table "products", force: :cascade do |t|
    t.string "image_url"
    t.string "name"
    t.string "supplier_name"
    t.string "description"
    t.string "shipping_info"
    t.integer "inventory", default: 0
    t.integer "price"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "content"
    t.integer "product_id"
    t.index ["product_id"], name: "index_reviews_on_product_id"
  end

end
