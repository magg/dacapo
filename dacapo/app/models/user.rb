class User < ActiveRecord::Base
  attr_accessible :password_digest, :rol, :username
end
