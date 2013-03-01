class AddEstatusToShifts < ActiveRecord::Migration
  def change
    add_column :shifts, :estatus, :integer
  end
end
