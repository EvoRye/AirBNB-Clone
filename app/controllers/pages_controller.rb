class PagesController < ApplicationController
  def home
    @listings = Listing.all
  end

  def ui_kit
    @listing = Listing.first
  end
end
