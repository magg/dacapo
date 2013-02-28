class Major < ActiveRecord::Base
  validates :clave, :presence => true, :uniqueness => true
  
  attr_accessible :clave, :descripcion
end
