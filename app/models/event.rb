class Event < ApplicationRecord
  belongs_to :creator, class_name: :User
  has_many :tickets
  has_many :attendees, through: :tickets, source: :user

  scope :previous, -> { where('start < ?', Time.now) }
  scope :upcoming, -> { where('start >= ?', Time.now) }
end
