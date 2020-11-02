class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def thanks_email
    @passenger = params[:passenger]
    mail(to: @passenger.email, subject: 'Booking Confirmation')
  end
end
