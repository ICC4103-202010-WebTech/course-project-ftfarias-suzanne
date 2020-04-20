class EventGuest < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :comments ,dependent: :destroy
  has_many :replies , dependent: :destroy
  has_one :vote , dependent: :destroy
end
