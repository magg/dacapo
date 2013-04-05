class User < ActiveRecord::Base
  has_one :student, :dependent => :destroy
  validates :username, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
  has_secure_password
  attr_accessible :password, :password_confirmation, :rol, :username, :email
  validates_presence_of :password, :on => :create
  
  #before_create { generate_token(:auth_token) }
  
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
  
  def self.authenticate(username, password)
    find_by_username(username).try(:authenticate, password)
  end
  
  def send_password_reset
     generate_token(:password_reset_token)
     self.password_reset_sent_at = Time.zone.now
     save!
     #UserMailer.password_reset(self).deliver
   end

end
