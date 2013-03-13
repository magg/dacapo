class Group < ActiveRecord::Base
  has_many :memberships
  has_many :enrollments
  
  has_many :teachers, :through => :memberships
  has_many :shifts, :through => :memberships
  has_many :periods, :through => :memberships
  has_many :subjects, :through => :memberships
  
  has_many :students_enrolls, :through => :enrollments
  has_many :shifts_enrolls, :through => :enrollments
  has_many :periods_enrolls, :through => :enrollments
  has_many :subjects_enrolls, :through => :enrollments
  
  validates :clave, :presence => true, :uniqueness => true
  attr_accessible :clave, :descripcion, :estatus
end
