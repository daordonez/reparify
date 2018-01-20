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

ActiveRecord::Schema.define(version: 20180119140626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
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
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "builds", force: :cascade do |t|
    t.datetime "fecha"
    t.bigint "part_id"
    t.string "imei"
    t.string "color"
    t.string "capacidad"
    t.string "estado_estetico"
    t.bigint "devise_model_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "test_id"
    t.string "NumeroSerie"
    t.index ["devise_model_id"], name: "index_builds_on_devise_model_id"
    t.index ["part_id"], name: "index_builds_on_part_id"
    t.index ["test_id"], name: "index_builds_on_test_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "nombre"
    t.string "razonsocial"
    t.string "cif"
    t.string "direccion"
    t.string "cp"
    t.string "telefono"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active"
  end

  create_table "conmutadors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "nombre_apellido1"
    t.string "nombre_apellido2"
    t.string "nombre_primero"
    t.string "dni"
    t.string "direccion_completa"
    t.integer "cp"
    t.string "ppoblacion"
    t.string "formapago_hab"
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

  create_table "invoices", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "item_id"
    t.string "baseimponible_prec"
    t.string "ivaimponilbe_prec"
    t.string "importetotal_prec"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "company_id"
    t.index ["company_id"], name: "index_invoices_on_company_id"
    t.index ["customer_id"], name: "index_invoices_on_customer_id"
    t.index ["item_id"], name: "index_invoices_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "nombre_art"
    t.string "descripcion_art"
    t.string "baseimponible_prec"
    t.string "ivaimponible_prec"
    t.string "total_prec"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "invoice_id"
    t.index ["invoice_id"], name: "index_items_on_invoice_id"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "nombre_fabricante"
    t.integer "family_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["family_id"], name: "index_manufacturers_on_family_id"
  end

  create_table "mintests", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mintests_tests", id: false, force: :cascade do |t|
    t.bigint "test_id", null: false
    t.bigint "mintest_id", null: false
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
    t.string "nombre_parte"
    t.integer "cantidad_stock"
    t.string "precio"
    t.integer "devise_model_id"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["devise_model_id"], name: "index_parts_on_devise_model_id"
    t.index ["order_id"], name: "index_parts_on_order_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "nombre_proveedor"
    t.integer "tiempoServicio_proveedor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.bigint "build_id"
    t.bigint "devise_model_id"
    t.boolean "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["build_id"], name: "index_tests_on_build_id"
    t.index ["devise_model_id"], name: "index_tests_on_devise_model_id"
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

  add_foreign_key "builds", "devise_models"
  add_foreign_key "builds", "parts"
  add_foreign_key "invoices", "companies"
  add_foreign_key "invoices", "customers"
  add_foreign_key "invoices", "items"
  add_foreign_key "items", "invoices"
  add_foreign_key "tests", "builds"
  add_foreign_key "tests", "devise_models"
end
