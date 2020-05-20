class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :meeting_id
      t.string :start_time
      t.datetime :end_time
      t.string :agenda

      t.timestamps
    end
  end
end
