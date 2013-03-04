class Student < ActiveRecord::Base
  belongs_to :user
  has_one :payment
  has_many :memberships
  has_many :kardexes
  
  
  has_many :groups, :through => :memberships
  has_many :shifts, :through => :memberships
  has_many :periods, :through => :memberships
  has_many :subjects, :through => :memberships
  
  has_many :tetramods, :through => :kardexes
  has_many :subjects, :through => :kardexes
  
  attr_accessible :apmat, :appat, :comentario, :direccion, :estatus, :fecha_nac, :instrumento, :nombre, :rfc_fis, :tel_fis, :telefono1, :telefono2, :telefono3, :tipo_clase, :tipo_pago, :user_id

  validates :nombre,:presence => true
  validates_associated :user
  accepts_nested_attributes_for :user, :reject_if => lambda { |a| a[:content].blank? }
  
end
