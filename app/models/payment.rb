class Payment < ActiveRecord::Base
  has_many :students
  attr_accessible :descripcion
end
