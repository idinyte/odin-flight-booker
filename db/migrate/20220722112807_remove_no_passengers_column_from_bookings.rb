class RemoveNoPassengersColumnFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :no_passengers
  end
end
