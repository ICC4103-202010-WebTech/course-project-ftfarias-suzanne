class Vote < ApplicationRecord
  belongs_to :start_date_poll
  belongs_to :event_guest
end
