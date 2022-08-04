class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight])
    @time_offset = (DateTime.now.to_i - Flight.first.created_at.to_i)/86400
    @no_passengers = params[:no_passengers].to_i
    @no_passengers.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      flash[:notice] = 'Succesfully booked! Email has been sent to all passengers.'
      PassengerMailer.with(booking_id: @booking.id).confirmation_email.deliver_now
      redirect_to booking_path(@booking)
    else
      flash[:alert] = 'Error has occured'
      render 'new'
    end
  end

  def show
    @time_offset = (DateTime.now.to_i - Flight.first.created_at.to_i)/86400
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
  end
end
