class Student < ActiveRecord::Base
  attr_accessible :apmat, :appat, :comentario, :direccio, :estatus, :fecha_nac, :instrumento, :nombre, :rfc_fis, :tel_fis, :telefono1, :telefono2, :telefono3, :tipo_clase, :tipo_pago, :user_id
end
