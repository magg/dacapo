class Student < ActiveRecord::Base
  belongs_to :user
  attr_accessible :apmat, :appat, :comentario, :direccio, :estatus, :fecha_nac, :instrumento, :nombre, :rfc_fis, :tel_fis, :telefono1, :telefono2, :telefono3, :tipo_clase, :tipo_pago, :user_id

  validates :nombre,:presence => true
  validates_associated :user
  accepts_nested_attributes_for :user, :reject_if => lambda { |a| a[:content].blank? }
  
end
