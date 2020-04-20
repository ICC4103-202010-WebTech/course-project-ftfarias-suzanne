class CreateStartDatePolls < ActiveRecord::Migration[6.0]
  def change
    create_table :start_date_polls do |t|

      t.timestamps
    end
  end
end
