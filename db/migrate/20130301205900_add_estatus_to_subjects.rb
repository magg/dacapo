class AddEstatusToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :estatus, :integer
    add_column :subjects, :creditos, :integer
    add_column :subjects, :taller, :integer
  end
end
