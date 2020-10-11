# frozen_string_literal: true

# Holds actions regarding viewing airports and flights
class FlightsController < ApplicationController
  def index
    @airport_labels = Airport.all.map { |a| [a.airport_code, a.id]}

    if params[:flight_search] 
     @available_flights = Flight
    .where(from_airport: params[:flight_search][:from_airport_code])
    .where(to_airport: params[:flight_search][:to_airport_code])
    .where(flight_date: params[:flight_search][:date_of_flight])
    end
  end
end
