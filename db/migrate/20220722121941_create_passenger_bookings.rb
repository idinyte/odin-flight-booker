class CreatePassengerBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :passenger_bookings do |t|
      t.references :booking, foreign_key: true
      t.references :passenger, foreign_key: true
      t.timestamps
    end
  end
end
