class User < ApplicationRecord
  has_secure_password
  has_many :monsters
  
  validates :username, presence: true, :length => { :minimum => 5, :maximum => 15 }
  validates :email, presence: true
  validates :password, presence: true, :length => { :minimum => 6, :maximum => 32 }
end

# with: /^[A-Za-z0-9]+$/,
