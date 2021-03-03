class BookingsController < ApplicationController

  def index
    @bookings  = current_user.bookings.includes(:vehicle)
  end

  # POST /bookings
  def create
    booking = current_user.bookings.build(booking_params)
    if booking.save
      flash[:notice] = 'Booking successfully created!'
    else
      flash[:error] = booking.errors.full_messages.join(',')
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def booking_params
    params.require(:booking).permit!
  end
end
