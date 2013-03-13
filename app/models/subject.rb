class Subject < ActiveRecord::Base
  has_and_belongs_to_many :periods, :join_table => :periods_subjects
  
  has_many :minorizations
  has_many :memberships
  has_many :curriculums
  has_many :kardexes
  has_many :enrollments
  
  has_many :groups, :through => :memberships
  has_many :teachers, :through => :memberships
  has_many :shifts, :through => :memberships
  has_many :periods_members, :through => :memberships

  has_many :minors, :through => :minorizations
  
  has_many :majors, :through => :curriculums
  has_many :tetramods, :through => :curriculums
  
  has_many :tetramods, :through => :kardexes
  has_many :students, :through => :kardexes
  
  has_many :students_enrolls, :through => :enrollments
  has_many :shifts_enrolls, :through => :enrollments
  has_many :periods_enrolls, :through => :enrollments
  has_many :subjects_enrolls, :through => :enrollments
  
  
  validates :clave, :presence => true, :uniqueness => true
  
  attr_accessible :clave, :descripcion, :matreq, :estatus, :creditos, :taller
end
