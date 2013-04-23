class CreatePayItems < ActiveRecord::Migration
  def change
    create_table :pay_items do |t|
      t.integer :payment_id
      t.integer :cost_id
      t.decimal :importe
      t.integer :cant
      t.integer :consec

      t.timestamps
    end
  end
end
