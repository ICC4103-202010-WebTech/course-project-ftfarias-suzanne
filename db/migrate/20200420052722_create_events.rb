class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :picture
      t.boolean :publicEvent

      t.timestamps
    end
  end
end
