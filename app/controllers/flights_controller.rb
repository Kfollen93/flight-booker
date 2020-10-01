class FlightsController < ApplicationController
    def index
      @flights = Airport.all.first
    end
end