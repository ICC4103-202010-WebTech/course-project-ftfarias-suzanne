class Reply < ApplicationRecord
  belongs_to :comment
  belongs_to :event_guest
  belongs_to :event
end
