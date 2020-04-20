class CreateUserProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :lastname
      t.string :bio
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
