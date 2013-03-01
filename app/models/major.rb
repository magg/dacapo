class Major < ActiveRecord::Base
  has_many :curriculums
  
  has_many :subjects, :through => :curriculums
  has_many :tetramods, :through => :curriculums
  
  validates :clave, :presence => true, :uniqueness => true
  
  attr_accessible :clave, :descripcion
end
