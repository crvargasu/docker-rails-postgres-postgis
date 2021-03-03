# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_03_021829) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "Estab_Ed_Basica", id: :serial, force: :cascade do |t|
    t.geometry "geom", limit: {:srid=>5360, :type=>"st_point"}
    t.float "agno"
    t.float "rbd"
    t.float "dgv_rbd"
    t.string "nom_rbd", limit: 254
    t.string "tipo_depen", limit: 254
    t.string "tipo_soste", limit: 254
    t.float "cod_reg"
    t.float "cod_prov"
    t.string "nom_prov", limit: 254
    t.float "cod_deprov"
    t.string "nom_deprov", limit: 254
    t.float "cod_com"
    t.string "nom_com", limit: 254
    t.string "direccion", limit: 254
    t.float "numero"
    t.string "referencia", limit: 254
    t.float "latitud"
    t.float "longitud"
    t.float "mat_tot"
    t.float "mat_parv"
    t.float "mat_bas_re"
    t.float "mat_bas_ad"
    t.float "mat_esp"
    t.float "mat_mhc_re"
    t.float "mat_mhc_ad"
    t.float "mat_mtp_re"
    t.float "mat_mtp_ad"
    t.float "mat_hom_to"
    t.float "mat_muj_to"
    t.float "mat_si_to"
    t.float "mat_chi"
    t.float "mat_ext"
    t.float "mat_nac"
    t.float "mat_etnia"
    t.float "mat_no_etn"
    t.float "mat_si_etn"
    t.float "cur_sim_to"
    t.float "cur_comb_t"
    t.float "rbd_1"
    t.string "grado", limit: 254
    t.float "cod_depe2"
    t.float "cod_grupo"
    t.float "cod_rural_"
    t.float "ind_am"
    t.float "ind_cc"
    t.float "ind_hv"
    t.float "ind_pf"
    t.float "promedio_p"
    t.float "rbd_12"
    t.float "cod_grup_1"
    t.float "nalu_lect8"
    t.float "nalu_mate8"
    t.float "nalu_soc8b"
    t.float "prom_lect8"
    t.float "prom_mate8"
    t.float "prom_soc8b"
  end

  create_table "metropolitana", id: :serial, force: :cascade do |t|
    t.geometry "geom", limit: {:srid=>4326, :type=>"st_polygon"}
    t.integer "CIR_SENA"
    t.integer "COD_COMUNA"
    t.integer "DIS_ELEC"
    t.string "name"
    t.string "NOM_PROV"
    t.string "NOM_REG"
    t.float "SHAPE_Area"
    t.float "SHAPE_LENG"
    t.float "SHAPE_Le_1"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
