class AddUserToMailbox < ActiveRecord::Migration[6.0]
  def change
    add_reference :mailboxes, :user, null: true, foreign_key: true
  end
end
