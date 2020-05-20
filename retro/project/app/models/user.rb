class User < ApplicationRecord
    has_many :created_bookings, class_name: "Booking", foreign_key:"creator_id" 
    has_many :booking_attendies, foreign_key: "attendee_id"
    has_many :attending_bookings, through: :booking_attendees, source: :booking
end
