class DropMinorssubjects < ActiveRecord::Migration
  def up
    drop_table 'minors_subjects'
  end

  def down
  end
end
