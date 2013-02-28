class CreateMinorizations < ActiveRecord::Migration
  def change
    create_table :minorizations do |t|
      t.integer :minor_id
      t.integer :subject_id
      t.string :descripcion

      t.timestamps
    end
  end
end
