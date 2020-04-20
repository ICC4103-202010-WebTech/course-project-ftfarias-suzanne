class AddOrganizationAdministratorToOrganization < ActiveRecord::Migration[6.0]
  def change
    add_reference :organizations, :organization_administrator, null: true, foreign_key: true
  end
end
