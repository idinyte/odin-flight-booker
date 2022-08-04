class PassengerMailer < ApplicationMailer
  default from: 'idinyte.odin@gmail.com'

  def self.send_confirmation(booking)
    booking.passengers.each do |passenger|
      confirmation_email(passenger, booking).deliver_now
    end
  end

  def confirmation_email
    @booking = Booking.find(params[:booking_id])
    puts "#{@booking.passengers.pluck(:email)}"
    mail(to: @booking.passengers.pluck(:email), subject: 'Flight confirmation')
  end
end
