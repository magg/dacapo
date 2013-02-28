class FixStudents < ActiveRecord::Migration
  def up
        rename_column :students, :direccio, :direccion
        rename_column :students, :tipo_pago, :payment_id
        
  end

  def down
  end
end
