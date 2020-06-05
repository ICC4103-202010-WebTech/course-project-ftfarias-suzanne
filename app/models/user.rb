class User < ApplicationRecord
  has_one :user_profile, dependent: :destroy
  has_one :event_creator, dependent: :destroy
  has_one :organization_administrator,dependent: :destroy
  has_one :system_administrator, dependent: :destroy
  has_one :mailbox, dependent: :destroy
  has_many :events
  has_one :organization
  has_many :invitations
  has_many :event_guests, dependent: :destroy

  validates :email, presence: true, uniqueness: true , format: {with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}

  after_create :create_mailbox
  after_create :create_event_creator

  private
  #Function to create the user mailbox automatically
  def create_mailbox
    Mailbox.create(user_id: self.id)
  end

  def create_event_creator
    EventCreator.create(user_id: self.id)
  end

end
