class AddUsernameToUserProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :user_profiles, :username, :string
  end
end
