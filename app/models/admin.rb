class Admin < ActiveRecord::Base
  belongs_to :user
  
  attr_accessible :fecha_nac, :nombre, :user_id, :user_attributes, :fec_in, :apmat, :appat, :direccion,
  :telefono1, :telefono2, :telefono3
  
  validates :nombre,  :presence => true
  validates_associated :user
  accepts_nested_attributes_for :user, :reject_if => lambda { |a| a[:content].blank? }
end
