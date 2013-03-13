class FixMemberships < ActiveRecord::Migration
  def up
    rename_column :memberships, :student_id, :teacher_id
  end

  def down
  end
end
