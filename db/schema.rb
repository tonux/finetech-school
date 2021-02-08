# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_08_124154) do

  create_table "etablissements", force: :cascade do |t|
    t.string "libelle"
    t.string "adresse"
    t.integer "user_id", null: false
    t.string "telephone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_etablissements_on_user_id"
  end

  create_table "evaluations", force: :cascade do |t|
    t.datetime "date_evaluation"
    t.string "libelle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "levels", force: :cascade do |t|
    t.string "libelle"
    t.integer "niveau"
    t.integer "nombre_eleve"
    t.integer "user_id", null: false
    t.integer "etablissement_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["etablissement_id"], name: "index_levels_on_etablissement_id"
    t.index ["user_id"], name: "index_levels_on_user_id"
  end

  create_table "matieres", force: :cascade do |t|
    t.string "libelle"
    t.string "description"
    t.integer "coef"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_matieres_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "matiere_id", null: false
    t.decimal "valeur", precision: 10, scale: 2
    t.integer "evaluation_id", null: false
    t.integer "user_id", null: false
    t.text "commentaire"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["evaluation_id"], name: "index_notes_on_evaluation_id"
    t.index ["matiere_id"], name: "index_notes_on_matiere_id"
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nom", default: "", null: false
    t.string "prenom", default: "", null: false
    t.string "telephone", default: "", null: false
    t.integer "age", default: 0
    t.integer "type_user"
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
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "etablissements", "users"
  add_foreign_key "levels", "etablissements"
  add_foreign_key "levels", "users"
  add_foreign_key "matieres", "users"
  add_foreign_key "notes", "evaluations"
  add_foreign_key "notes", "matieres"
  add_foreign_key "notes", "users"
end
