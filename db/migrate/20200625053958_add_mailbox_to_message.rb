class AddMailboxToMessage < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :mailbox, null: true, foreign_key: true

  end
end
