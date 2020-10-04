# frozen_string_literal: true

# Holds actions regarding viewing airports and flights
class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map { |a| [ a.airport_code ]}
    @flights = Flight.all
  end
end
