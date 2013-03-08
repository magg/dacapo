class Minor < ActiveRecord::Base
  has_many :minorizations
  has_many :students
  
  has_many :subjects, :through => :minorizations
  
  validates :clave, :presence => true, :uniqueness => true
  
  attr_accessible :clave, :descripcion
end
