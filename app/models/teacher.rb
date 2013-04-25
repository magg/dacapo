class Teacher < ActiveRecord::Base
  belongs_to :user
  
  
  
  attr_accessible :apmat, :appat, :direccion, :fecha_nac, :nombre, :fec_in,:estatus, 
  :telefono1, :telefono2, :telefono3, :user_id, :user_attributes
  
  
  validates :nombre,:presence => true
  validates_associated :user
  accepts_nested_attributes_for :user
end
