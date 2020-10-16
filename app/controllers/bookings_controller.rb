# frozen_string_literal: true

# Holds actions regarding bookings
class BookingsController < ApplicationController
  def new
    @passenger = Passenger.new
    @booking = Booking.new
    @flight = Flight.find(params[:booking][:flight_id])
    @selected_booking = @flight.bookings.build
    
  end
end