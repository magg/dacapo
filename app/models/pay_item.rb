class PayItem < ActiveRecord::Base
  belongs_to :cost
  belongs_to :payment
  
  attr_accessible :cant, :consec, :cost_id, :importe, :total, :payment_id
end
