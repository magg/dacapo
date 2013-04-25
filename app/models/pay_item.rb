class PayItem < ActiveRecord::Base
  belongs_to :cost
  belongs_to :payment
  
  
  validates_presence_of :cant, :cost_id, :importe, :total
  
  attr_accessible :cant, :consec, :cost_id, :importe, :total, :payment_id
end
