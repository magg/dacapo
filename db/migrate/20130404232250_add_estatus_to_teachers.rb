class AddEstatusToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :estatus, :integer
  end
end
