# frozen_string_literal: true

# Holds actions regarding viewing airports and flights
class FlightsController < ApplicationController
  def index
    @airports = Airport.all.build(airport_params)
    @flights = Flight.all
  end

  private

  def airport_params
    params.require(:airport).permit(:airport_code)
  end
end
