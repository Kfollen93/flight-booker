# frozen_string_literal: true

# Holds actions regarding bookings
class BookingsController < ApplicationController
  def new
    @passenger = Passenger.new
     2.times { @passenger.bookings.build }
    @booking = Booking.new

    @flight = Flight.find(params[:booking][:flight_id])
    @selected_booking = @flight.bookings.build
  end
  
  def create
    @flight = Flight.new(flight_params)
    @booking = Booking.new(booking_params)
    @booking.flight = @flight
    
    if @booking.save
      flash[:notice] = "Booking was successfully created."
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, passenger_attributes: [:name, :email])
  end

  def flight_params
    params.require(:booking).permit(:flight_id)
  end
end