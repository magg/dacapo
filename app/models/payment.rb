class Payment < ActiveRecord::Base
  belongs_to :payment_type
  belongs_to :user
  
  has_many :pay_item, :dependent => :destroy
  
  attr_accessible :descripcion, :user_id, :payment_type_id, :total,:pay_item_attributes

  accepts_nested_attributes_for :pay_item, :allow_destroy => true
  

end
