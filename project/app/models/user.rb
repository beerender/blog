class User < ApplicationRecord
    has_many :cretaed_bookings, class_name: "Booking", foreign_key: "creator_id"
    has_many :booking_attendees, foreign_key: "attendee_id"
    has_many :attending_bookings, through: :booking_attendess, source: :booking
end
