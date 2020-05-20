class BookingAttendee < ApplicationRecord
    belongs_to: booking 
    belongs_to:attendee, class_name: "User", foreign_key: "attendee_id"
end
