class CreateTetramods < ActiveRecord::Migration
  def change
    create_table :tetramods do |t|
      t.integer :clave
      t.string :descripcion
      t.integer :orden_tetramod

      t.timestamps
    end
  end
end
