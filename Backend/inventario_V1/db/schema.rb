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

ActiveRecord::Schema.define(version: 2019_02_04_032153) do

  create_table "contratos", primary_key: "contrato_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "contrato"
    t.date "fecha_contrato"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diagnostico_fallas", primary_key: "diagnostico_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "diagnostico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diagnosticos", primary_key: "diagnostico_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "diagnostico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empresas", primary_key: "empresa_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "razon_nom"
    t.string "telefono"
    t.string "direccion"
    t.integer "contrato_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entregaequipos", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "equi_opera"
    t.boolean "equi_fuera"
    t.boolean "entregado"
    t.boolean "mante_preve"
    t.boolean "mante_correc"
    t.boolean "calibracion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formsaliingres", primary_key: "form_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.datetime "fecha_sal_ing"
    t.integer "equipo_id"
    t.string "area"
    t.text "concepto"
    t.integer "empresa_id"
    t.integer "contrato_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "identiequipos", primary_key: "equipo_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "marca"
    t.string "modelo"
    t.string "serie"
    t.string "inventario"
    t.string "placa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "laborejecutadas", primary_key: "labor_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "labor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ordenserviequipos", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "consecutivo_id"
    t.integer "solici_id"
    t.integer "equipo_id"
    t.integer "razon_id"
    t.integer "recibido_id"
    t.integer "diagnostico_id"
    t.integer "labor_id"
    t.integer "entrega_equi_id"
    t.string "nombre_pers1"
    t.string "nombre_pers2"
    t.string "nombre_pers3"
    t.string "visto_ing"
    t.string "nom_cargo_recibe"
    t.datetime "fecha_orden"
    t.integer "recomenda_id"
    t.integer "mate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "razonsoliservis", primary_key: "razon_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "razon_soli_servi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recibidoareaequipos", primary_key: "recibido_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "recibido_por"
    t.datetime "fecha_recibido"
    t.string "persona_asign"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recoobsers", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "recomenda_id"
    t.text "recomen_observa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repuesmateris", primary_key: "mate_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "item"
    t.text "descripcion"
    t.integer "unidad"
    t.integer "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solicitudes", primary_key: "solici_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "nombre_repor"
    t.string "area"
    t.string "ubicacion"
    t.datetime "fecha_soli"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
