class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :period_id
      t.integer :subject_id
      t.integer :group_id
      t.integer :shift_id
      t.integer :student_id
      t.string :horario
      t.integer :lim_faltas
      t.integer :sesiones
      t.integer :cupo

      t.timestamps
    end
  end
end
