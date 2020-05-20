class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :meeting_room
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :agenda

      t.timestamps
    end
  end
end
