class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :student_id
      t.integer :subject_id
      t.integer :period_id
      t.integer :group_id
      t.integer :c1
      t.integer :f1
      t.integer :c2
      t.integer :f2
      t.integer :c3
      t.integer :f3
      t.integer :calif_final
      t.integer :tot_faltas
      t.integer :estatus
      t.integer :oportunidad
      t.integer :promedio

      t.timestamps
    end
  end
end
