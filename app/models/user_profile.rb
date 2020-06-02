class UserProfile < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar

  validates :name, :lastname,:address,:bio,:username,:phone ,presence: true
end
