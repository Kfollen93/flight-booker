# frozen_string_literal: true

# Holds actions regarding bookings
class BookingsController < ApplicationController
  def new
    @passenger = Passenger.new

     @selected_booking = Booking.where(from_airport: params[:booking][:flight_id])
  end
end