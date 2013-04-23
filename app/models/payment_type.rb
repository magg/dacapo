class PaymentType < ActiveRecord::Base
  belongs_to :student
  has_many :payments
  
  
  attr_accessible :descripcion
end
