class Event < ApplicationRecord
  belongs_to :event_creator
  belongs_to :organization
  has_many :comments, dependent: :destroy
  has_many :replies, through: :comments
  has_many :event_guests ,dependent: :destroy
  has_many :invitations, dependent: :destroy
  has_many :start_date_options , dependent: :destroy
  has_many :votes ,through: :start_date_options

  accepts_nested_attributes_for :start_date_options

  has_one_attached :event_picture

  validates :name, :location, :description, presence: true

end
