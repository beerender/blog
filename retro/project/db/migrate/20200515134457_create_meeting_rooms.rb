class CreateMeetingRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :meeting_rooms do |t|
      t.integer :capacity
      t.string :name
      t.string :status
      t.integer :creator_id
      t.time :start_time
      t.time :end_time
      t.date :date

      t.timestamps
    end
  end
end
