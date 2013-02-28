class CreateMinorSubs < ActiveRecord::Migration
  def up
    create_table :minors_subjects do |t|
      t.integer :minor_id
      t.integer :subject_id
      t.string  :descripcion
    end
  end

  def down
  end
end
