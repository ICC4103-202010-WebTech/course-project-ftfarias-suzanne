class AddEventToStartDateOption < ActiveRecord::Migration[6.0]
  def change
    add_reference :start_date_options, :event, null: true, foreign_key: true
  end
end
