# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airports.destroy_all

airports = Airport.create([{ airport_code: 'San Francisco International Airport (SFO)' },
                           { airport_code: 'John F. Kennedy International Airport (JFK)'},
                           { airport_code: 'Seattle–Tacoma International Airport (SEA)'},
                           { airport_code: 'Portland International Airport (PDX)'},
                           { airport_code: 'Denver International Airport (DEN)'},
                           { airport_code: 'Hartsfield-Jackson Atlanta International Airport (ATL)'}])
