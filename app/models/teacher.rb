class Teacher < ActiveRecord::Base
  belongs_to :user
  
  
  
  attr_accessible :apmat, :appat, :comentario, :direccion, :fecha_nac, :nombre, :rfc_fis, :tel_fis, 
  :telefono1, :telefono2, :telefono3, :user_id, :user_attributes
  
  
  validates :nombre,:presence => true
  validates_associated :user
  accepts_nested_attributes_for :user, :reject_if => lambda { |a| a[:content].blank? }
end
