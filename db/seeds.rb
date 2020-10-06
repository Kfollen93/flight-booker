# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.destroy_all
Flight.destroy_all

airports = Airport.create([{ airport_code: 'SFO' },
                          { airport_code: 'JFK'},
                          { airport_code: 'SEA'},
                          { airport_code: 'PDX'},
                          { airport_code: 'DEN'},
                          { airport_code: 'ATL'}])

flights = Flight.create([{ from_airport_id: airports.slice(0).id,
                          to_airport_id: airports.slice(1).id,
                          flight_date: "02/02/2021",
                          duration: '5 hours and 47 minutes'
                          },

                          { from_airport_id: airports.slice(2).id,
                            to_airport_id: airports.slice(3).id,
                          flight_date: "05/11/2021",
                          duration: '2 hours and 20 minutes'
                          },

                          { from_airport_id: airports.slice(4).id,
                            to_airport_id: airports.slice(5).id,
                          flight_date: "01/06/2022",
                          duration: '4 hours and 6 minutes'
                          }
                          ])

p "Created #{Airport.count} airport entries and #{Flight.count} flight entries."