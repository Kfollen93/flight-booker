# frozen_string_literal: true

# Holds actions regarding bookings
class BookingsController < ApplicationController
  def new
    @booking = Booking.new

    num_of_passengers = params[:booking][:passengers]
    num_of_passengers.to_i.times { @booking.build_passenger }
  
    @flight = Flight.find(params[:booking][:flight_id])
    @selected_booking = @flight.bookings.build
  end
  
  def create
    @booking = Booking.new(booking_params)
    
    if @booking.save
      flash[:notice] = "Booking was successfully created."
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, passenger_attributes: [:name, :email])
  end
end