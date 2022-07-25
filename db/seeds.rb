# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.create([{city: "CPH"}, {city: "CDG"}, {city: "ATH"}, {city: "BCN"}, {city: "BER"}, {city: "AMS"}, {city: "LCY"}, {city: "ARN"}])
durations = Array.new(56) { rand(110..280) }
60.times{
  Flight.create([
  {departure_airport_id: 1, arrival_airport_id: 2, duration_minutes: durations[0], departure_datetime:  rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 1, arrival_airport_id: 3, duration_minutes: durations[1], departure_datetime:  rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 1, arrival_airport_id: 4, duration_minutes: durations[2], departure_datetime:  rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 1, arrival_airport_id: 5, duration_minutes: durations[3], departure_datetime:  rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 1, arrival_airport_id: 6, duration_minutes: durations[4], departure_datetime:  rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 1, arrival_airport_id: 7, duration_minutes: durations[5], departure_datetime:  rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 1, arrival_airport_id: 8, duration_minutes: durations[6], departure_datetime:  rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 2, arrival_airport_id: 1, duration_minutes: durations[7], departure_datetime:  rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 2, arrival_airport_id: 3, duration_minutes: durations[8], departure_datetime:  rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 2, arrival_airport_id: 4, duration_minutes: durations[9], departure_datetime:  rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 2, arrival_airport_id: 5, duration_minutes: durations[10], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 2, arrival_airport_id: 6, duration_minutes: durations[11], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 2, arrival_airport_id: 7, duration_minutes: durations[12], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 2, arrival_airport_id: 8, duration_minutes: durations[13], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 3, arrival_airport_id: 1, duration_minutes: durations[14], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 3, arrival_airport_id: 2, duration_minutes: durations[15], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 3, arrival_airport_id: 4, duration_minutes: durations[16], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 3, arrival_airport_id: 5, duration_minutes: durations[17], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 3, arrival_airport_id: 6, duration_minutes: durations[18], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 3, arrival_airport_id: 7, duration_minutes: durations[19], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 3, arrival_airport_id: 8, duration_minutes: durations[20], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 4, arrival_airport_id: 1, duration_minutes: durations[21], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 4, arrival_airport_id: 2, duration_minutes: durations[22], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 4, arrival_airport_id: 3, duration_minutes: durations[23], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 4, arrival_airport_id: 5, duration_minutes: durations[24], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 4, arrival_airport_id: 6, duration_minutes: durations[25], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 4, arrival_airport_id: 7, duration_minutes: durations[26], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 4, arrival_airport_id: 8, duration_minutes: durations[27], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 5, arrival_airport_id: 1, duration_minutes: durations[28], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 5, arrival_airport_id: 2, duration_minutes: durations[29], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 5, arrival_airport_id: 3, duration_minutes: durations[30], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 5, arrival_airport_id: 4, duration_minutes: durations[31], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 5, arrival_airport_id: 6, duration_minutes: durations[32], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 5, arrival_airport_id: 7, duration_minutes: durations[33], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 5, arrival_airport_id: 8, duration_minutes: durations[34], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 6, arrival_airport_id: 1, duration_minutes: durations[35], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 6, arrival_airport_id: 2, duration_minutes: durations[36], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 6, arrival_airport_id: 3, duration_minutes: durations[37], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 6, arrival_airport_id: 4, duration_minutes: durations[38], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 6, arrival_airport_id: 5, duration_minutes: durations[39], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 6, arrival_airport_id: 7, duration_minutes: durations[40], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 6, arrival_airport_id: 8, duration_minutes: durations[41], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 7, arrival_airport_id: 1, duration_minutes: durations[42], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 7, arrival_airport_id: 2, duration_minutes: durations[43], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 7, arrival_airport_id: 3, duration_minutes: durations[44], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 7, arrival_airport_id: 4, duration_minutes: durations[45], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 7, arrival_airport_id: 5, duration_minutes: durations[46], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 7, arrival_airport_id: 6, duration_minutes: durations[47], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 7, arrival_airport_id: 8, duration_minutes: durations[48], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 8, arrival_airport_id: 1, duration_minutes: durations[49], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 8, arrival_airport_id: 2, duration_minutes: durations[50], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 8, arrival_airport_id: 3, duration_minutes: durations[51], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 8, arrival_airport_id: 4, duration_minutes: durations[52], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 8, arrival_airport_id: 5, duration_minutes: durations[53], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 8, arrival_airport_id: 6, duration_minutes: durations[54], departure_datetime: rand(1.day.from_now..60.days.from_now)},
  {departure_airport_id: 8, arrival_airport_id: 7, duration_minutes: durations[55], departure_datetime: rand(1.day.from_now..60.days.from_now)}])
}