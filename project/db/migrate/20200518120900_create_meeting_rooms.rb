class CreateMeetingRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :meeting_rooms do |t|
      t.string :name
      t.integer :capacity
      t.string :status
      t.string :start_time
      t.datetime :end_time
      t.integer :creator_id

      t.timestamps
    end
  end
end
