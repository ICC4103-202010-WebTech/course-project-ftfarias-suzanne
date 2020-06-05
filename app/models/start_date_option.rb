class StartDateOption < ApplicationRecord
  belongs_to :event
  has_many :votes, dependent: :destroy
end
