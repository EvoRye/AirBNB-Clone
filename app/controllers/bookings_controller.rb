class BookingsController < ApplicationController
  before_action :set_booking, only: %i[update show edit destroy]

  def index
    @bookings = Booking.where(user_id: current_user)
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user
    @booking.listing_id = current_listing
  end

  def edit

  end

  def update
    @booking.update(booking_params)
    redirect_to bookings_link
  end

  def destroy
    @booking.destroy
    redirect_to bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
