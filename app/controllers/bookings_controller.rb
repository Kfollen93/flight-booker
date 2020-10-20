# frozen_string_literal: true

# Holds actions regarding bookings
class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:booking][:flight_id])
    
    @selected_booking = @flight.bookings.build
    @booking = Booking.new
    num_of_passengers = params[:booking][:passengers]
    num_of_passengers.to_i.times { @booking.passengers.build }
  end
  
  def create
    @booking = Booking.new(booking_params)
    
    if @booking.save!
      flash[:notice] = "Booking was successfully created."
      redirect_to @booking
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end