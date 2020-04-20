class Comment < ApplicationRecord
  belongs_to :event
  belongs_to :event_guest
  has_many :replies,dependent: :destroy
end
