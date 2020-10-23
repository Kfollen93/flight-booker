# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.destroy_all
Flight.destroy_all

airports = Airport.create([
{ airport_code: 'SFO' },
{ airport_code: 'JFK'},
{ airport_code: 'SEA'},
{ airport_code: 'PDX'},
{ airport_code: 'DEN'},
{ airport_code: 'ATL'}])

flights = Flight.create([
{ from_airport_id: airports.slice(0).id, to_airport_id: airports.slice(1).id, duration: "5hr 34min", flight_date: 10.months.from_now},
{ from_airport_id: airports.slice(0).id, to_airport_id: airports.slice(2).id, duration: "2hr 12min", flight_date: 10.months.from_now},
{ from_airport_id: airports.slice(0).id, to_airport_id: airports.slice(3).id, duration: "1hr 42min", flight_date: 10.months.from_now},
{ from_airport_id: airports.slice(0).id, to_airport_id: airports.slice(4).id, duration: "2hr 26min", flight_date: 10.months.from_now},
{ from_airport_id: airports.slice(0).id, to_airport_id: airports.slice(5).id, duration: "4hr 15min", flight_date: 10.months.from_now},

{ from_airport_id: airports.slice(1).id, to_airport_id: airports.slice(0).id, duration: "5hr 34min", flight_date: 11.months.from_now},
{ from_airport_id: airports.slice(1).id, to_airport_id: airports.slice(2).id, duration: "6hr 11min", flight_date: 11.months.from_now},
{ from_airport_id: airports.slice(1).id, to_airport_id: airports.slice(3).id, duration: "6hr 10min", flight_date: 11.months.from_now},
{ from_airport_id: airports.slice(1).id, to_airport_id: airports.slice(4).id, duration: "4hr 21min", flight_date: 11.months.from_now},
{ from_airport_id: airports.slice(1).id, to_airport_id: airports.slice(5).id, duration: "2hr 21min", flight_date: 11.months.from_now},

{ from_airport_id: airports.slice(2).id, to_airport_id: airports.slice(0).id, duration: "2hr 05min", flight_date: 10.months.from_now},
{ from_airport_id: airports.slice(2).id, to_airport_id: airports.slice(1).id, duration: "4hr 59min", flight_date: 10.months.from_now},
{ from_airport_id: airports.slice(2).id, to_airport_id: airports.slice(3).id, duration: "0hr 47min", flight_date: 10.months.from_now},
{ from_airport_id: airports.slice(2).id, to_airport_id: airports.slice(4).id, duration: "2hr 43min", flight_date: 10.months.from_now},
{ from_airport_id: airports.slice(2).id, to_airport_id: airports.slice(5).id, duration: "4hr 51min", flight_date: 10.months.from_now},

{ from_airport_id: airports.slice(3).id, to_airport_id: airports.slice(0).id, duration: "1hr 49min", flight_date: 10.months.from_now},
{ from_airport_id: airports.slice(3).id, to_airport_id: airports.slice(1).id, duration: "4hr 56min", flight_date: 10.months.from_now},
{ from_airport_id: airports.slice(3).id, to_airport_id: airports.slice(2).id, duration: "0hr 54min", flight_date: 10.months.from_now},
{ from_airport_id: airports.slice(3).id, to_airport_id: airports.slice(4).id, duration: "2hr 17min", flight_date: 10.months.from_now},
{ from_airport_id: airports.slice(3).id, to_airport_id: airports.slice(5).id, duration: "4hr 11min", flight_date: 10.months.from_now},

{ from_airport_id: airports.slice(4).id, to_airport_id: airports.slice(0).id, duration: "2hr 47min", flight_date: 11.months.from_now},
{ from_airport_id: airports.slice(4).id, to_airport_id: airports.slice(1).id, duration: "3hr 43min", flight_date: 11.months.from_now},
{ from_airport_id: airports.slice(4).id, to_airport_id: airports.slice(2).id, duration: "2hr 52min", flight_date: 11.months.from_now},
{ from_airport_id: airports.slice(4).id, to_airport_id: airports.slice(3).id, duration: "2hr 46min", flight_date: 11.months.from_now},
{ from_airport_id: airports.slice(4).id, to_airport_id: airports.slice(5).id, duration: "2hr 45min", flight_date: 11.months.from_now},

{ from_airport_id: airports.slice(5).id, to_airport_id: airports.slice(0).id, duration: "5hr 11min", flight_date: 11.months.from_now},
{ from_airport_id: airports.slice(5).id, to_airport_id: airports.slice(1).id, duration: "2hr 13min", flight_date: 11.months.from_now},
{ from_airport_id: airports.slice(5).id, to_airport_id: airports.slice(2).id, duration: "5hr 18min", flight_date: 11.months.from_now},
{ from_airport_id: airports.slice(5).id, to_airport_id: airports.slice(3).id, duration: "5hr 10min", flight_date: 11.months.from_now},
{ from_airport_id: airports.slice(5).id, to_airport_id: airports.slice(4).id, duration: "3hr 05min", flight_date: 11.months.from_now}])

p "Created #{Airport.count} airport entries and #{Flight.count} flight entries."