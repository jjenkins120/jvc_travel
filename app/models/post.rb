class Post < ApplicationRecord
  belongs_to :trip
  has_one :user, through: :trip
  has_many :comments, :dependent => :destroy
  has_many :post_tags

  has_many :tags, through: :post_tags, :dependent => :destroy
  accepts_nested_attributes_for :tags

  def current_user_trips_cities(current_user)
    user = current_user
    @trips = []
    user.trips.each do |trip|
      @trips << trip.destination.city
    end
    @trips
  end
end
