class AddUserToEventGuest < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_guests, :user, null: true, foreign_key: true
  end
end
