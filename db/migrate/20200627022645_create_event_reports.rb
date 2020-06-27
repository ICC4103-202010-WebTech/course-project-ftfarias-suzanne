class CreateEventReports < ActiveRecord::Migration[6.0]
  def change
    create_table :event_reports do |t|
      t.string :message
      t.timestamps
    end
  end
end
