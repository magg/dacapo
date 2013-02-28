class Group < ActiveRecord::Base
  has_many :memberships
  has_many :students, :through => :memberships
  has_many :shifts, :through => :memberships
  has_many :periods, :through => :memberships
  has_many :subjects, :through => :memberships
  
  
  validates :clave, :presence => true, :uniqueness => true
  attr_accessible :clave, :descripcion
end
