class CreateMailboxes < ActiveRecord::Migration[6.0]
  def change
    create_table :mailboxes do |t|

      t.timestamps
    end
  end
end
