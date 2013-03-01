class AddEstatusToMajors < ActiveRecord::Migration
  def change
    add_column :majors, :estatus, :integer
  end
end
