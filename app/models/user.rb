class User < ApplicationRecord
  has_one :user_profile
  has_one :event_creator
  has_one :organization_administrator
  has_one :system_administrator
  has_one :mailbox
  has_many :events
  has_one :organization
  has_many :invitations, through: :mailbox
  has_many :event_guests ,through: :invitations

end
