class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :clave
      t.string :descripcion
      t.string :matreq

      t.timestamps
    end
  end
end
