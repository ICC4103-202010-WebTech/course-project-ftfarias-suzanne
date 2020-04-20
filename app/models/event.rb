class Event < ApplicationRecord
  belongs_to :event_creator
  belongs_to :organization
  has_one :start_date_poll
  has_many :comments
  has_many :event_guests
  has_many :replies, through: :comments
  has_many :event_guests
  has_many :invitations
end
