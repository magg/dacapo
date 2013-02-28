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

ActiveRecord::Schema.define(:version => 20130228222426) do

  create_table "groups", :force => true do |t|
    t.string   "clave"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "majors", :force => true do |t|
    t.string   "clave"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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
  end

  create_table "periods_subjects", :id => false, :force => true do |t|
    t.integer "period_id"
    t.integer "subject_id"
  end

  create_table "shifts", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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
  end

  create_table "subjects", :force => true do |t|
    t.string   "clave"
    t.string   "descripcion"
    t.string   "matreq"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "rol"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "email"
  end

end
