class CreateMinors < ActiveRecord::Migration
  def change
    create_table :minors do |t|
      t.string :clave
      t.string :descripcion

      t.timestamps
    end
  end
end
