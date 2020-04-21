class Vote < ApplicationRecord
  belongs_to :start_date_option
  belongs_to :event_guest
end
