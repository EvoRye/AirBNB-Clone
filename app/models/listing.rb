class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings
  geocoded_by :location
  after_validation :geocode if :will_save_change_to_location?
  has_many :reviews, through: :bookings
end
