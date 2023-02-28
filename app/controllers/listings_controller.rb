class ListingsController < ApplicationController
  before_action :set_listing, only: %i[update show edit delete]

  def index
    @listings = Listing.all
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
    @listing = Listing.update(listing_params)
    @listing.save
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to listings_path, status: :see_other
  end

  def show
    @listing
  end

  def edit
  end

  private

  def listing_params
    params.require(:listing).permit(:title, location, :content, :price)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
