class Subject < ActiveRecord::Base
  has_and_belongs_to_many :periods
  attr_accessible :clave, :descripcion, :matreq
end
