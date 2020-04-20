class AddEventGuestToComment < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :event_guest, null: true, foreign_key: true
  end
end
