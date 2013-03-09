class RemoveIndexFromPeriodsSubjects < ActiveRecord::Migration
  def up
        remove_index "periods_subjects", :name => "index_periods_subjects_on_period_id_and_subject_id"
  end

  def down
  end
end
