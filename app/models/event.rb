class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :tickets, foreign_key: :event_attended_id
  has_many :attendee, through: :tickets
end
