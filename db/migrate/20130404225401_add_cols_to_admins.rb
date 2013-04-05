class AddColsToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :appat, :string
    add_column :admins, :apmat, :string
    add_column :admins, :direccion, :string
    add_column :admins, :fec_in, :date
    add_column :admins, :telefono1, :date
    add_column :admins, :telefono2, :date
    add_column :admins, :telefono3, :date  
    add_column :admins, :estatus, :integer   
    
    remove_column :teachers, :rfc_fis
    remove_column :teachers, :comentario
    remove_column :teachers, :tel_fis
    add_column :teachers, :fec_in, :date
    
    add_column :superadmins, :appat, :string
    add_column :superadmins, :apmat, :string
    add_column :superadmins, :direccion, :string
    add_column :superadmins, :fec_in, :date
    add_column :superadmins, :telefono1, :date
    add_column :superadmins, :telefono2, :date
    add_column :superadmins, :telefono3, :date  
    add_column :superadmins, :estatus, :integer
    
  end
end
