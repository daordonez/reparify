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

ActiveRecord::Schema.define(version: 20171124164933) do

  create_table "dashboards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devise_models", force: :cascade do |t|
    t.string "nombrecomercial_modelo"
    t.integer "manufacturer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manufacturer_id"], name: "index_devise_models_on_manufacturer_id"
  end

  create_table "families", force: :cascade do |t|
    t.string "nombre_familia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "nombre_fabricante"
    t.integer "famiily_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["famiily_id"], name: "index_manufacturers_on_famiily_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "fecha_pedido"
    t.string "valorPedido"
    t.integer "provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_orders_on_provider_id"
  end

  create_table "parts", force: :cascade do |t|
    t.string "nombreComun_parte"
    t.string "precio_parte"
    t.integer "order_id"
    t.integer "deviseModel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deviseModel_id"], name: "index_parts_on_deviseModel_id"
    t.index ["order_id"], name: "index_parts_on_order_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "nombre_proveedor"
    t.integer "tiempoServicio_proveedor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
