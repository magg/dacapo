class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.string :clave
      t.date :fecha_inicio
      t.date :fecha_fin
      t.string :descripcion

      t.timestamps
    end
  end
end
