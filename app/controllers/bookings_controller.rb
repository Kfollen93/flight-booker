# frozen_string_literal: true

# Holds actions regarding bookings
class BookingsController < ApplicationController
  def new
    @passenger = Passenger.new
    @booking = Booking.new

    # @num_of_passengers = params[:booking][:passengers].to_i.times { Passenger.new }

    @flight = Flight.find(params[:booking][:flight_id])
    @selected_booking = @flight.bookings.build
  end
  
  def create
    @selected_booking = @flight.bookings.build(booking_params)
    if @selected_booking.save
      flash[:notice] = "Booking was successfully created."
      redirect_to booking_path
    else
      render :new
    end
  end

  private
  def booking_params
  #  params.require(:booking).permit(passengers_attributes: [:name, :email])
  end
end