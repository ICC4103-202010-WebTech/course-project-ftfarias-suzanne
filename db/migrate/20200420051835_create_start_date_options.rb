class CreateStartDateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :start_date_options do |t|
      t.datetime :possiblestartdate

      t.timestamps
    end
  end
end
