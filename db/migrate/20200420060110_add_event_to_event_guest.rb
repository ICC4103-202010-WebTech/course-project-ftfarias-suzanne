class AddEventToEventGuest < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_guests, :event, null: true, foreign_key: true
  end
end
