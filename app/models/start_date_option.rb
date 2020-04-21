class StartDateOption < ApplicationRecord
  belongs_to :start_date_poll
  has_many :votes, dependent: :destroy
end
