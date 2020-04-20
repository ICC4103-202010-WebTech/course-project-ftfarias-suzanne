class CreateOrganizationAdministrators < ActiveRecord::Migration[6.0]
  def change
    create_table :organization_administrators do |t|

      t.timestamps
    end
  end
end
