class User < ApplicationRecord
  # validates :password, confirmation: true, presence: true
  # validates :password_confirmation, presence: true

  has_secure_password
  # validates :password, presence: true, length: { minimum: 6 }
  has_many :organized_events, foreign_key: :creator_id, class_name: :Event
  has_many :tickets
  has_many :attended_events, through: :tickets, source: :event

  def attending?(event_id)
    tickets.where(event_id: event_id).exists?
  end

  def register(event_id)
    tickets.create(event_id: event_id)
  end

  def unregister(event_id)
    tickets.find_by(event_id: event_id).destroy
  end
end
