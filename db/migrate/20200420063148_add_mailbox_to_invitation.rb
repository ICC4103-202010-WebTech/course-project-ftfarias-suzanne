class AddMailboxToInvitation < ActiveRecord::Migration[6.0]
  def change
    add_reference :invitations, :mailbox, null: true, foreign_key: true
  end
end
