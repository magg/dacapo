class ChangeMatreqInSubjects < ActiveRecord::Migration
  def up
    change_column :subjects, :matreq, :integer
  end

  def down
  end
end
