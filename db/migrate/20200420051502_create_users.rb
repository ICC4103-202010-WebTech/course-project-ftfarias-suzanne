class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :lastname
      t.string :bio
      t.string :phone
      t.string :address
      t.string :username

      t.timestamps
    end
  end
end
