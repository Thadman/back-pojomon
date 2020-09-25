class User < ApplicationRecord
  has_secure_password
  has_many :monsters

  validates :username, presence: true, length: { minimum: 3, maximum: 32 }
  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 3, maximum: 32 }
end


