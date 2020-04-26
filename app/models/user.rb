class User < ApplicationRecord
  validates :password, confirmation: true, presence: true
  validates :password_confirmation, presence: true
end
