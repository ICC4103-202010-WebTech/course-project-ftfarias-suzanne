class AddUserToSystemAdministrator < ActiveRecord::Migration[6.0]
  def change
    add_reference :system_administrators, :user, null: true, foreign_key: true
  end
end
