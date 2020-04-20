class Organization < ApplicationRecord
  belongs_to :organization_administrator
  has_many :events
  has_many :users
end
