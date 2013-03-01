class Tetramod < ActiveRecord::Base
  has_many :curriculums
  has_many :kardexes
  
  has_many :majors, :through => :curriculums
  has_many :subjects, :through => :curriculums
  
  has_many :subjects, :through => :kardexes
  has_many :students, :through => :kardexes
  
  attr_accessible :clave, :descripcion, :orden_tetramod
end
