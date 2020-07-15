class User < ApplicationRecord
  has_many :monsters
  
  validates :username, presence: true, :length => { :minimum => 5, :maximum => 15 }
  validates :email, presence: true
  validates :password_digest, presence: true, :length => { :minimum => 8, :maximum => 32 }
end

# with: /^[A-Za-z0-9]+$/,
