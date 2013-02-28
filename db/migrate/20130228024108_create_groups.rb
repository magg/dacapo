class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :clave
      t.string :descripcion

      t.timestamps
    end
  end
end
