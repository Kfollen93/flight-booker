class FlightsController < ApplicationController
    def index
      @airports = Airport.all.first
      @flights = Flight.all
    end
end