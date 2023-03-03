class ListingsController < ApplicationController
  before_action :set_listing, only: %i[update show edit destroy]

  def index
    @listings = Listing.all
    @markers = @listings.geocoded.map do |listing|
      {
        lat: listing.latitude,
        lng: listing.longitude
      }
    end
    if params[:query].present?
      sql_query = <<~SQL
        listings.location ILIKE :query
      SQL
      @listings = Listing.where(sql_query, query: "%#{params[:query]}%")
    else
      @listings = Listing.all
    end
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    redirect_to listings_path if @listing.save
  end

  def update
    redirect_to listing_path(@listing) if @listing.update(listing_params)
  end

  def destroy
    @listing.destroy
    redirect_to listings_path, status: :see_other
  end

  def show
    @reviews = @listing.reviews
    @booking = Booking.new
  end

  def edit
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :location, :content, :price, :image)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
