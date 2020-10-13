# frozen_string_literal: true

# Holds actions regarding bookings
class BookingsController < ApplicationController
  def new
    @passenger = Passenger.new

    # @selected_booking =  Flight
    # .where(from_airport: params[:booking][:from_airport_code])
    # .where(to_airport: params[:booking][:to_airport_code])
    # .where(flight_date: params[:booking][:date_of_flight])
    # .where(number_of_passengers: params[:booking][:passengers])

    @selected_booking = Passenger.new
    end
end