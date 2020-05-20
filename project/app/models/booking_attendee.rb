class BookingAttendee < ApplicationRecord
    belongs_to :booking
    belongs_to :attendee, class_name:"User", foreign_key: "user_id"
end
