class Invitation < ApplicationRecord
  belongs_to :mailbox
  belongs_to :user
  belongs_to :event
end
