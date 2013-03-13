class Period < ActiveRecord::Base
  has_and_belongs_to_many :subjects, :join_table => :periods_subjects
  has_many :memberships
  has_many :enrollments
  
  has_many :groups, :through => :memberships
  has_many :teachers, :through => :memberships
  has_many :shifts, :through => :memberships
  has_many :subjects_members, :through => :memberships
  
  has_many :students_enrolls, :through => :enrollments
  has_many :shifts_enrolls, :through => :enrollments
  has_many :periods_enrolls, :through => :enrollments
  has_many :subjects_enrolls, :through => :enrollments
  
  validates :clave, :presence => true, :uniqueness => true
  validates :fecha_inicio, :fecha_fin, :presence => true
	
  attr_accessible :clave, :descripcion, :fecha_fin, :fecha_inicio, :estatus
end
