# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130405014653) do

  create_table "admins", :force => true do |t|
    t.string   "nombre"
    t.date     "fecha_nac"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "appat"
    t.string   "apmat"
    t.string   "direccion"
    t.date     "fec_in"
    t.date     "telefono1"
    t.date     "telefono2"
    t.date     "telefono3"
    t.integer  "estatus"
  end

  create_table "curriculums", :force => true do |t|
    t.integer  "major_id"
    t.integer  "subject_id"
    t.integer  "tetramod_id"
    t.integer  "orden_kardex"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "enrollments", :force => true do |t|
    t.integer  "student_id"
    t.integer  "subject_id"
    t.integer  "period_id"
    t.integer  "group_id"
    t.string   "c1"
    t.integer  "f1"
    t.string   "c2"
    t.integer  "f2"
    t.string   "c3"
    t.integer  "f3"
    t.string   "calif_final"
    t.integer  "tot_faltas"
    t.integer  "estatus"
    t.integer  "oportunidad"
    t.integer  "promedio"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "groups", :force => true do |t|
    t.string   "clave"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "estatus"
  end

  create_table "kardexes", :force => true do |t|
    t.integer  "student_id"
    t.integer  "subject_id"
    t.integer  "tetramod_id"
    t.integer  "c1"
    t.date     "p1"
    t.integer  "c2"
    t.date     "p2"
    t.integer  "c3"
    t.date     "p3"
    t.integer  "orden_kardex"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "majors", :force => true do |t|
    t.string   "clave"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "estatus"
  end

  create_table "memberships", :force => true do |t|
    t.integer  "period_id"
    t.integer  "subject_id"
    t.integer  "group_id"
    t.integer  "shift_id"
    t.integer  "teacher_id"
    t.string   "horario"
    t.integer  "lim_faltas"
    t.integer  "sesiones"
    t.integer  "cupo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "minorizations", :force => true do |t|
    t.integer  "minor_id"
    t.integer  "subject_id"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "minors", :force => true do |t|
    t.string   "clave"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "payments", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "periods", :force => true do |t|
    t.string   "clave"
    t.date     "fecha_inicio"
    t.date     "fecha_fin"
    t.string   "descripcion"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "estatus"
  end

  create_table "periods_subjects", :id => false, :force => true do |t|
    t.integer "period_id"
    t.integer "subject_id"
  end

  add_index "periods_subjects", ["period_id", "subject_id"], :name => "index_periods_subjects_on_period_id_and_subject_id", :unique => true

  create_table "shifts", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "estatus"
  end

  create_table "students", :force => true do |t|
    t.string   "nombre"
    t.string   "appat"
    t.string   "apmat"
    t.string   "direccion"
    t.string   "telefono1"
    t.string   "telefono2"
    t.string   "telefono3"
    t.date     "fecha_nac"
    t.integer  "estatus"
    t.integer  "payment_id"
    t.integer  "tipo_clase"
    t.string   "rfc_fis"
    t.string   "tel_fis"
    t.string   "instrumento"
    t.string   "comentario"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "major_id"
    t.integer  "minor_id"
    t.string   "email2"
    t.string   "avatar"
    t.date     "fec_in"
    t.string   "dir_fis"
    t.string   "nom_fis"
    t.string   "padret"
    t.string   "postit"
    t.string   "fecha_pago"
  end

  create_table "subjects", :force => true do |t|
    t.string   "clave"
    t.string   "descripcion"
    t.integer  "matreq",      :limit => 255
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "estatus"
    t.integer  "creditos"
    t.integer  "taller"
  end

  create_table "superadmins", :force => true do |t|
    t.string   "nombre"
    t.date     "fecha_nac"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "appat"
    t.string   "apmat"
    t.string   "direccion"
    t.date     "fec_in"
    t.date     "telefono1"
    t.date     "telefono2"
    t.date     "telefono3"
    t.integer  "estatus"
  end

  create_table "teachers", :force => true do |t|
    t.string   "apmat"
    t.string   "appat"
    t.string   "direccion"
    t.date     "fecha_nac"
    t.string   "nombre"
    t.string   "telefono1"
    t.string   "telefono2"
    t.string   "telefono3"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.date     "fec_in"
    t.integer  "estatus"
  end

  create_table "tetramods", :force => true do |t|
    t.integer  "clave"
    t.string   "descripcion"
    t.integer  "orden_tetramod"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "estatus"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "rol"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "email"
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

end
