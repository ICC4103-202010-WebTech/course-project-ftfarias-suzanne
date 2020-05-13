class Comment < ApplicationRecord
  belongs_to :event
  belongs_to :event_guest
  has_many :replies,dependent: :destroy

  #before_create :verify_event_guest

      def verify_event_guest

        if (@event_guest.presence_in @event.event_guests) ==  nil
          raise "You cant comment events in which you are not a guest"
        end
      end
end
