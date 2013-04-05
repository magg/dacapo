class AddColsToStudent < ActiveRecord::Migration
  def change
    add_column :students, :email2, :string
    add_column :students, :avatar, :string
    add_column :students, :fec_in, :date
    add_column :students, :dir_fis, :string
    add_column :students, :nom_fis, :string
    add_column :students, :padret, :string
    add_column :students, :postit, :string
    add_column :students, :fecha_pago, :string
  end
end
