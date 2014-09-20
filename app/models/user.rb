class User < ActiveRecord::Base
  validates :username, :first_name, :last_name, :email, presence: true
  validates :username, uniqueness: true
  has_secure_password
end
