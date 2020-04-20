class Organization < ApplicationRecord
  belongs_to :organization_administrator
  has_many :events, dependent: :destroy
  has_many :users
end
