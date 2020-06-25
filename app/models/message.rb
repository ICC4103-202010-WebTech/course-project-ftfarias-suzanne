class Message < ApplicationRecord
  belongs_to :mailbox
  belongs_to :user
end
