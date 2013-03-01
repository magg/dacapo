class CreateSuperadmins < ActiveRecord::Migration
  def change
    create_table :superadmins do |t|
      t.string :nombre
      t.date :fecha_nac
      t.integer :user_id

      t.timestamps
    end
  end
end
