class AddOrganizationToOrganizationReport < ActiveRecord::Migration[6.0]
  def change
    add_reference :organization_reports, :organization, null: true, foreign_key: true
  end
end
