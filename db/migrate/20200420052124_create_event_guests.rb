class CreateEventGuests < ActiveRecord::Migration[6.0]
  def change
    create_table :event_guests do |t|

      t.timestamps
    end
  end
end
