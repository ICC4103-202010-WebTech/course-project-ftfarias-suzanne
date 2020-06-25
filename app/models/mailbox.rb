class Mailbox < ApplicationRecord
  belongs_to :user
  has_many :invitations, dependent: :destroy
  has_many :messages, dependent: :destroy
end
