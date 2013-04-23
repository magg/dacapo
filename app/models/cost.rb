class Cost < ActiveRecord::Base
  has_many :pay_item
  
  attr_accessible :descripcion, :modificable, :monto, :obligatorio, :seguridad, :tipo, :est
end
