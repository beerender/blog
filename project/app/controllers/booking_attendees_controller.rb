class BookingAttendeesController < ApplicationController
    def show
        BookingAttendee.find(user_params)
    end
    
    def new
        BookingAttendee.new
    end
    
    def create
        BookingAttendee.create(meeting_room_params)
    end
    
    def edit
    end
    
    def update
    end
    
    def delete
    end
    private
        def booking_attendee_params
            params.require(:booking_attendee).permit(:user_id, :booking_id, :attending, :recurs)
        end
end
