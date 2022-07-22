class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.references :departure_airport
      t.references :arrival_airport
      t.datetime :departure_datetime
      t.integer :duration_minutes
      t.timestamps
    end
  end
end
