class AddTotalToPayItem < ActiveRecord::Migration
  def change
    add_column :pay_items, :total, :decimal, :precision => 8, :scale => 2
  end
end
