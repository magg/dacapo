class ChangeFormatInscripcciones < ActiveRecord::Migration
  def up
    change_column :enrollments, :c1, :string
    change_column :enrollments, :c2, :string
    change_column :enrollments, :c3, :string
    change_column :enrollments, :calif_final, :string
  end

  def down
  end
end
