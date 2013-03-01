class Subject < ActiveRecord::Base
  has_and_belongs_to_many :periods
  has_many :minorizations
  has_many :memberships
  has_many :curriculums
    
  
  has_many :groups, :through => :memberships
  has_many :students, :through => :memberships
  has_many :shifts, :through => :memberships
  has_many :periods, :through => :memberships

  has_many :minors, :through => :minorizations
  
  has_many :majors, :through => :curriculums
  has_many :tetramods, :through => :curriculums
  
  
  
  validates :clave, :presence => true, :uniqueness => true
  
  attr_accessible :clave, :descripcion, :matreq
end
