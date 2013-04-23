class CreatePaymentTypes < ActiveRecord::Migration
  def change
    create_table :payment_types do |t|
      t.string :descripcion

      t.timestamps
    end
    
    add_column :payments, :payment_type_id, :integer
    add_column :payments, :user_id, :integer
    add_column :payments, :total, :decimal, :precision => 8, :scale => 2
    
  end
end
