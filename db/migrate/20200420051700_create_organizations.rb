class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :description
      t.string :picture
      t.string :bannerpicture
      t.string :membersnumber

      t.timestamps
    end
  end
end
