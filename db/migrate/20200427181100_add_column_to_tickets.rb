class AddColumnToTickets < ActiveRecord::Migration[5.2]
  def change
    add_reference :tickets, :attendee, foreign_key: true
    add_reference :tickets, :event_attended, foreign_key: true
  end
end
