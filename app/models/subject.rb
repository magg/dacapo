class Subject < ActiveRecord::Base
  has_and_belongs_to_many :periods
  has_many :minor_subjects
  has_many :minors, :through => :minor_subjects
  
  
  
  
  attr_accessible :clave, :descripcion, :matreq
end
