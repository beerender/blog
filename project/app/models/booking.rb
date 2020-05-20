class Booking < ApplicationRecord
    belongs_to :meeting_room
    belongs_to :creator, class_name: "User"
    has_many :booking_attendees
    has_many :users, through: :booking_attendees
end
