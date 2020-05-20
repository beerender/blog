class MeetingRoomsController < ApplicationController
    def index
    end
    
    def show
        MeetingRoom.find(meeting_room_params)
    end
    
    def new
        MeetingRoom.new
    end
    
    def create
        MeetingRoom.create(meeting_room_params)
    end
    
    def edit
    end
    
    def update
    end
    
    def delete
    end
    private
        def meeting_room_params
            params.require(:meeting_room).permit(:name, :capacity, :status, :start_date, :end_time, :creator_id)
        end
end
