class AddEventToStartDatePoll < ActiveRecord::Migration[6.0]
  def change
    add_reference :start_date_polls, :event, null: true, foreign_key: true
  end
end
