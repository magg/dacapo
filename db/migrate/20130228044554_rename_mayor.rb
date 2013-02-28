class RenameMayor < ActiveRecord::Migration
  def up
        rename_table :mayors, :majors
  end

  def down
  end
end
