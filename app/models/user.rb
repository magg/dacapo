class User < ActiveRecord::Base
  has_one :student, :dependent => :destroy
  validates :username, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
  has_secure_password
  attr_accessible :password, :password_confirmation, :rol, :username, :email
  validates_presence_of :password, :on => :create
  
  def self.authenticate(username, password)
    find_by_username(username).try(:authenticate, password)
  end

end
