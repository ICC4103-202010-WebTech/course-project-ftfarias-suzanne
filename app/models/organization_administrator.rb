class OrganizationAdministrator < ApplicationRecord
  belongs_to :user
  has_many :organizations, dependent: :destroy
end
