class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.string :descripcion
      t.integer :tipo
      t.decimal :monto, :precision => 8, :scale => 2
      t.integer :obligatorio
      t.integer :seguridad
      t.integer :modificable
      t.integer :est

      t.timestamps
    end
  end
end
