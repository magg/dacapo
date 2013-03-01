class AddEstatusToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :estatus, :integer
  end
end
