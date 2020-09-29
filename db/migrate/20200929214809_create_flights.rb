class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :start_airport
      t.string :finish_airport
      t.datetime :flight_date
      t.string :duration

      t.timestamps
    end
  end
end
