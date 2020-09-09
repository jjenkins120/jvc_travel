class TripsController < ApplicationController
  before_action :find_trip, only: [:show, :edit, :update, :destroy]

  def index
    @trips = Trip.all
  end

  def show
  end

  def new
    @trip = Trip.new()
    @destinations = Destination.all
  end

  def create
    @trip = Trip.new(trip_params(:duration, :cost, :user_id, :destination_id ))
    if @trip.save
      flash[:trip] = "Your trip has been added!!!"
      @current_user.trips << @trip
      redirect_to user_path(@trip)
    else 
      flash[:errors] = @trip.errors.full_messages
      redirect_to new_trip_path(@trip)
    end

  end
  
  def edit
  end

  def update
    @trip = trip.find(params[:id])
    if @trip.update(trip_params(:duration, :cost, :destination_id))
        redirect_to trip_path(@trip)
    else 
        flash[:errors] = @trip.errors.full_messages
        redirect_to edit_trip_path(@trip)
    end
  end

  def destroy
  end

  private

  def find_trip
    @trip = Trip.find(params[:id])
  end
    
  def trip_params(*args)
    params.require(:trip).permit(*args)
  end
 
end
