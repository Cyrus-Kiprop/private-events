class AddColumnToTickets < ActiveRecord::Migration[5.2]
  def change
    add_reference :tickets, :user, foreign_key: true
    add_reference :tickets, :event, foreign_key: true
  end
end
