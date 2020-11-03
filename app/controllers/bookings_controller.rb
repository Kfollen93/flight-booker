# frozen_string_literal: true

# Holds actions regarding bookings
class BookingsController < ApplicationController
  def new
    if params[:booking][:flight_id] == ""
      flash[:alert] = "* You must select a flight before continuing."
      redirect_to root_path
      
    else
      @flight = Flight.find(params[:booking][:flight_id])
      @selected_booking = @flight.bookings.build
      @booking = Booking.new
      num_of_passengers = params[:booking][:passengers]
      num_of_passengers.to_i.times { @booking.passengers.build }
    end
  end
  
  def create
    @booking = Booking.new(booking_params)
    @flight = Flight.find(params[:booking][:flight_id])
    @selected_booking = @flight.bookings.build

    if @booking.save
      if Rails.env.development?
        @booking.passengers.each do |passenger|
          PassengerMailer.with(passenger: passenger).thanks_email.deliver_now!
        end
      end
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