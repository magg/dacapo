class AddIndexToPeriodsSubjects < ActiveRecord::Migration
  def change
    add_index :periods_subjects, [:period_id, :subject_id], unique: true
  end
end
