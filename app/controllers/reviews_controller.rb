class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @booking = Booking.find(params[:booking_id])
    @review = @booking.build_review(review_params)

    if @review.save
      redirect_to @booking.listing, notice: 'Review was successfully created.'
    else
      render "bookings/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
