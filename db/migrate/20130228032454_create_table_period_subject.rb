class CreateTablePeriodSubject < ActiveRecord::Migration
  def up
    create_table :periods_subjects, :id => false do |t|
      t.integer :period_id
      t.integer :subject_id
    end
  end

  def down
  end
end
