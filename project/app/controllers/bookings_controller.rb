class BookingsController < ApplicationController
    def list
    end
    
    def show
        Booking.find(user_params)
    end
    
    def new
        Booking.new
    end
    
    def create
        Booking.create(meeting_room_params)
    end
    
    def edit
    end
    
    def update
    end
    
    def delete
    end
    private
        def booking_params
            params.require(:booking).permit(:meeting_id, :start_time, :end_time, :agenda)
        end
end
