class RenameMayor < ActiveRecord::Migration
  def up
        rename_table :mayor, :major
  end

  def down
  end
end
