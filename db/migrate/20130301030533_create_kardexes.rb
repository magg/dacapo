class CreateKardexes < ActiveRecord::Migration
  def change
    create_table :kardexes do |t|
      t.integer :student_id
      t.integer :subject_id
      t.integer :tetramod_id
      t.integer :c1
      t.date :p1
      t.integer :c2
      t.date :p2
      t.integer :c3
      t.date :p3
      t.integer :orden_kardex

      t.timestamps
    end
  end
end
