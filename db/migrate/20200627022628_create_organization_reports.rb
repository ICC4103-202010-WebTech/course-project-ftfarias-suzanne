class CreateOrganizationReports < ActiveRecord::Migration[6.0]
  def change
    create_table :organization_reports do |t|
      t.string :message
      t.timestamps
    end
  end
end
