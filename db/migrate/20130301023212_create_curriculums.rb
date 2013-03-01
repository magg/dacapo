class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.integer :major_id
      t.integer :subject_id
      t.integer :tetramod_id
      t.integer :orden_kardex

      t.timestamps
    end
  end
end
