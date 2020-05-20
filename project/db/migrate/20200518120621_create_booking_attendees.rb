class CreateBookingAttendees < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_attendees do |t|
      t.string :user_id
      t.integer :booking_id
      t.string :attending
      t.boolean :recurs

      t.timestamps
    end
  end
end
