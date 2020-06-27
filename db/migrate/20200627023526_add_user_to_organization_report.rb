class AddUserToOrganizationReport < ActiveRecord::Migration[6.0]
  def change
    add_reference :organization_reports, :user, null: true, foreign_key: true
  end
end
