class FlightsController < ApplicationController
    def new
        @flight = Flight.new
    end

    def index
        @flights = Flight.all
    end

    def create
        @flight = Flight.new(flight_params)
    
        if @flight.save
          flash[:notice] = 'Flight has been created.'
          redirect_to @flight
        else
          render :new
        end
    end
end