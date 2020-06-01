class Event < ApplicationRecord
  belongs_to :event_creator
  belongs_to :organization
  has_one :start_date_poll, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :replies, through: :comments
  has_many :event_guests ,dependent: :destroy
  has_many :invitations, dependent: :destroy
  has_one_attached :event_picture

end
