class OrganizationAdministrator < ApplicationRecord
  belongs_to :user
  has_one :organization, dependent: :destroy
end
