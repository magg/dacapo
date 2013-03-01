class AddEstatusToTetramods < ActiveRecord::Migration
  def change
    add_column :tetramods, :estatus, :integer
  end
end
