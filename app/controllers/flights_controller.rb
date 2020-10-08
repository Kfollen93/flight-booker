# frozen_string_literal: true

# Holds actions regarding viewing airports and flights
class FlightsController < ApplicationController
  def index
    @available_flights = Flight
    .where(from_airport: params[:flight_search][:from_airport_id])
    .where(to_airport: params[:flight_search][:to_airport_id])
    .where(flight_date: params[:flight_search][:date_of_flight])
  end
end
