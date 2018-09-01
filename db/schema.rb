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

ActiveRecord::Schema.define(version: 2018_08_29_143816) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "avances", force: :cascade do |t|
    t.bigint "Reto_id", null: false
    t.integer "porcentaje", default: 0, null: false
    t.string "evidencia"
    t.binary "adjunto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Reto_id"], name: "index_avances_on_Reto_id"
  end

  create_table "claves", force: :cascade do |t|
    t.bigint "Usuario_id", null: false
    t.string "clave", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Usuario_id"], name: "index_claves_on_Usuario_id"
  end

  create_table "comentarios", force: :cascade do |t|
    t.bigint "Acance_id", null: false
    t.string "descripcion", null: false
    t.bigint "Usuario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Acance_id"], name: "index_comentarios_on_Acance_id"
    t.index ["Usuario_id"], name: "index_comentarios_on_Usuario_id"
  end

  create_table "estados", force: :cascade do |t|
    t.string "descripcion", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facilitadors", force: :cascade do |t|
    t.bigint "Usuario_id", null: false
    t.bigint "Universidad_id", null: false
    t.string "direccion", null: false
    t.binary "firmaDigital"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Universidad_id"], name: "index_facilitadors_on_Universidad_id"
    t.index ["Usuario_id"], name: "index_facilitadors_on_Usuario_id"
  end

  create_table "facultads", force: :cascade do |t|
    t.bigint "Universidad_id", null: false
    t.string "descripcion", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Universidad_id"], name: "index_facultads_on_Universidad_id"
  end

  create_table "perfils", force: :cascade do |t|
    t.string "descripcion", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "retadors", force: :cascade do |t|
    t.bigint "Usuario_id", null: false
    t.string "direccion", null: false
    t.binary "firmaDigital"
    t.string "Presupuesto", default: "0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Usuario_id"], name: "index_retadors_on_Usuario_id"
  end

  create_table "retos", force: :cascade do |t|
    t.bigint "Retador_id", null: false
    t.string "descripcion", null: false
    t.bigint "Estado_id", default: 1, null: false
    t.datetime "fecha_Inicio"
    t.datetime "fecha_Finaliza"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Estado_id"], name: "index_retos_on_Estado_id"
    t.index ["Retador_id"], name: "index_retos_on_Retador_id"
  end

  create_table "solucionadors", force: :cascade do |t|
    t.bigint "Reto_id", null: false
    t.bigint "Universidad_id", null: false
    t.bigint "Facultad_id", null: false
    t.bigint "Usuario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Facultad_id"], name: "index_solucionadors_on_Facultad_id"
    t.index ["Reto_id"], name: "index_solucionadors_on_Reto_id"
    t.index ["Universidad_id"], name: "index_solucionadors_on_Universidad_id"
    t.index ["Usuario_id"], name: "index_solucionadors_on_Usuario_id"
  end

  create_table "universidads", force: :cascade do |t|
    t.string "descripcion", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombres", null: false
    t.string "apellidos", null: false
    t.string "correo", null: false
    t.string "telefono"
    t.bigint "Estado_id", default: 5, null: false
    t.bigint "Perfil_id", null: false
    t.integer "intentos", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Estado_id"], name: "index_usuarios_on_Estado_id"
    t.index ["Perfil_id"], name: "index_usuarios_on_Perfil_id"
  end

end
