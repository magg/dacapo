class Payment < ActiveRecord::Base
  belongs_to :payment_type
  belongs_to :user
  
  has_many :pay_item
  
  attr_accessible :descripcion, :user_id, :payment_type_id, :total,:pay_item_attributes

  accepts_nested_attributes_for :pay_item, :reject_if => lambda { |a| a[:content].blank? }

end
