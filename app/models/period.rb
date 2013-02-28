class Period < ActiveRecord::Base
  has_and_belongs_to_many :subjects
  attr_accessible :clave, :descripcion, :fecha_fin, :fecha_inicio
end
