# frozen_string_literal: true

# Holds actions regarding viewing airports and flights
class FlightsController < ApplicationController
  def index
    @available_flights = Flight.where(flight_date: "02/02/2021")                 
  end
end
