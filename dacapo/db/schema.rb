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

ActiveRecord::Schema.define(:version => 20130227193814) do

  create_table "students", :force => true do |t|
    t.string   "nombre"
    t.string   "appat"
    t.string   "apmat"
    t.string   "direccio"
    t.string   "telefono1"
    t.string   "telefono2"
    t.string   "telefono3"
    t.date     "fecha_nac"
    t.integer  "estatus"
    t.integer  "tipo_pago"
    t.integer  "tipo_clase"
    t.string   "rfc_fis"
    t.string   "tel_fis"
    t.string   "instrumento"
    t.string   "comentario"
    t.integer  "user_id"
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
