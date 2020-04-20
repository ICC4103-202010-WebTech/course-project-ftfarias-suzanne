class StartDatePoll < ApplicationRecord
  belongs_to :event
  has_many :start_date_options
  has_many :votes , through: :start_date_options

end
