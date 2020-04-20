class User < ApplicationRecord
  has_one :user_profile, dependent: :destroy
  has_one :event_creator, dependent: :destroy
  has_one :organization_administrator,dependent: :destroy
  has_one :system_administrator, dependent: :destroy
  has_one :mailbox, dependent: :destroy
  has_many :events
  has_one :organization
  has_many :invitations, through: :mailbox
  has_many :event_guests ,through: :invitations, dependent: :destroy

  validates :email, presence: true, uniqueness: true , format: {with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}

end
