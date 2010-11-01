class Attendee < ActiveRecord::Base
  has_many :associated_attendees
end
