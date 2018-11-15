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

<<<<<<< HEAD
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2018_11_14_072349) do
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2018_11_14_135536) do
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2018_11_14_073518) do
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2018_11_14_082811) do
=======
ActiveRecord::Schema.define(version: 2018_11_14_073545) do
>>>>>>> 0cfa0530a5bbcd1732601a4919cfa9ae56b899fb
>>>>>>> 69bac787b34468de167129cabbc66c4f7d61e057
>>>>>>> 259925a347e85ff012769736ffc58e6fdee2bd72
>>>>>>> master
=======
ActiveRecord::Schema.define(version: 2018_11_15_023950) do
>>>>>>> 78629671d21aa29f837865f57efab758fb0f37e2

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
<<<<<<< HEAD
  create_table "product_categories", force: :cascade do |t|
    t.integer "product_id"
    t.integer "category_id"
=======
<<<<<<< HEAD
  create_table "roles", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
=======
  create_table "product_reviews", force: :cascade do |t|
    t.string "comment"
    t.integer "rate"
>>>>>>> 78629671d21aa29f837865f57efab758fb0f37e2
  end

  create_table "user_roles", force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
=======
<<<<<<< HEAD
  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
=======
<<<<<<< HEAD
  create_table "products", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.float "price"
    t.integer "stock"
=======
>>>>>>> 259925a347e85ff012769736ffc58e6fdee2bd72
=======
>>>>>>> 78629671d21aa29f837865f57efab758fb0f37e2
  create_table "users", force: :cascade do |t|
    t.text "email"
    t.text "password"
>>>>>>> 0cfa0530a5bbcd1732601a4919cfa9ae56b899fb
>>>>>>> 69bac787b34468de167129cabbc66c4f7d61e057
>>>>>>> master
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
