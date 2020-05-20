class Booking < ApplicationRecord
    belongs_to: creator, class_name: "User"
    has_many: booking_attendees
    has_many: attendee, through: :booking_attendees
    has_many: MeetingRooms
end
