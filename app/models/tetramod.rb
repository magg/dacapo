class Tetramod < ActiveRecord::Base
  has_many :curriculums
  
  has_many :majors, :through => :curriculums
  has_many :subjects, :through => :curriculums
  
  attr_accessible :clave, :descripcion, :orden_tetramod
end
