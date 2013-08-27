class User < ActiveRecord::Base
  validates :login, presence: true
  validates :password, presence: true
  attr_accessible :login, :password, :password_confirmation, :role
  has_secure_password
end
