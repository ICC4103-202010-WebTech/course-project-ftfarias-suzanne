class AddStartDatePollToStartDateOption < ActiveRecord::Migration[6.0]
  def change
    add_reference :start_date_options, :start_date_poll, null: true, foreign_key: true
  end
end
