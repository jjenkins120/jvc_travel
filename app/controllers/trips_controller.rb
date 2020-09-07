class TripsController < ApplicationController
  before_action :find_trip, only: [:show, :edit, :update, :destroy]

  def index
    @trips = Trip.all
  end

  def show
  end

  def new
  end

  def create
    @current_user.trips<<Trip.create(trip_params)
    redirect_to user_path(trip.user)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:duration, :cost, :user_id, :destination_id)
  end
 
end
