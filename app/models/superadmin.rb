class Superadmin < ActiveRecord::Base
  belongs_to :user
  attr_accessible :fecha_nac, :nombre, :user_id
  validates :nombre,  :presence => true
  validates_associated :user
  accepts_nested_attributes_for :user, :reject_if => lambda { |a| a[:content].blank? }
  attr_accessible :fecha_nac, :nombre, :user_id
end
