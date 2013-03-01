class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :nombre
      t.date :fecha_nac
      t.integer :user_id

      t.timestamps
    end
  end
end
