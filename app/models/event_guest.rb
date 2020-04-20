class EventGuest < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :comments
  has_many :replies
  has_many :votes
end
