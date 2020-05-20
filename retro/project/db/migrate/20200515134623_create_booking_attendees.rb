class CreateBookingAttendees < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_attendees do |t|
      t.integer :user_id
      t.integer :booking_id
      t.boolean :attending
      t.boolean :recurs

      t.timestamps
    end
  end
end
