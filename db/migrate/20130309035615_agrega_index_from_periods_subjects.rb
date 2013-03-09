class AgregaIndexFromPeriodsSubjects < ActiveRecord::Migration
  def up
    add_index :periods_subjects, [:period_id, :subject_id], unique: true
  end

  def down
  end
end
