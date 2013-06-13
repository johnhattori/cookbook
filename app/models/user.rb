class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :password_digest, :username
  validates :username, :uniqueness => true
end
