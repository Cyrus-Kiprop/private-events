class User < ApplicationRecord
  # validates :password, confirmation: true, presence: true
  # validates :password_confirmation, presence: true

  has_secure_password
  # validates :password, presence: true, length: { minimum: 6 }
  has_many :tickets, foreign_key: :attendee_id
  has_many :created_events, foreign_key: :creator_id, class_name: 'Event'
  has_many :events_attended,  through: :tickets
end
