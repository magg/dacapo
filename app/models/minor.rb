class Minor < ActiveRecord::Base
    has_many :minor_subjects
    has_many :subjects, :through => :minor_subjects
  
  
  attr_accessible :clave, :descripcion
end
