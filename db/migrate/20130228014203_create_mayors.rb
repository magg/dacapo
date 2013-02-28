class CreateMayors < ActiveRecord::Migration
  def change
    create_table :mayors do |t|
      t.string :clave
      t.string :descripcion

      t.timestamps
    end
  end
end
