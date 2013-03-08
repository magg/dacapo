class AddMinorToStudents < ActiveRecord::Migration
  def change
    add_column :students, :minor_id, :integer
  end
end
