class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :apmat
      t.string :appat
      t.string :comentario
      t.string :direccion
      t.date :fecha_nac
      t.string :nombre
      t.string :rfc_fis
      t.string :tel_fis
      t.string :telefono1
      t.string :telefono2
      t.string :telefono3
      t.integer :user_id

      t.timestamps
    end
  end
end
