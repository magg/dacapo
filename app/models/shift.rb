class Shift < ActiveRecord::Base
  has_many :memberships
  has_many :groups, :through => :memberships
  has_many :students, :through => :memberships
  has_many :periods, :through => :memberships
  has_many :subjects, :through => :memberships
  
  attr_accessible :descripcion, :estatus
end
