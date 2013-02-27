class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :nombre
      t.string :appat
      t.string :apmat
      t.string :direccio
      t.string :telefono1
      t.string :telefono2
      t.string :telefono3
      t.date :fecha_nac
      t.integer :estatus
      t.integer :tipo_pago
      t.integer :tipo_clase
      t.string :rfc_fis
      t.string :tel_fis
      t.string :instrumento
      t.string :comentario
      t.integer :user_id

      t.timestamps
    end
  end
end
