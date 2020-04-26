class User < ApplicationRecord
  validates :password, confirmation: true, presence: true
  validates :password_confirmation, presence: true

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
