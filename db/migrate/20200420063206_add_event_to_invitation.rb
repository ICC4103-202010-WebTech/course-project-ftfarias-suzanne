class AddEventToInvitation < ActiveRecord::Migration[6.0]
  def change
    add_reference :invitations, :event, null: true, foreign_key: true
  end
end
