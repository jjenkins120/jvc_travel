class TripsController < ApplicationController
  before_action :find_trip, only: [:show, :edit, :update]

  def index
    @trips = Trip.all
  end

  def show
    @trip
  end

  def new
    @trip = Trip.new()
    @destination = Destination.new()
  end

  def create
    #byebug
    @current_user = User.last
    @trip = Trip.create(trip_params(:duration, :cost, :user_id, destination_attributes: [:city, :country]))
    #byebug
    if @trip.save
      flash[:trip] = "Your trip has been added!!!"
      @current_user.trips << @trip
      #byebug
      redirect_to user_path(@trip.user_id)
    else 
      flash[:errors] = @trip.errors.full_messages
      redirect_to new_trip_path(@current_user)
    end

  end
  
  def edit
  end

  def update
    @trip = Trip.find(params[:id])
    if @trip.update(trip_params(:duration, :cost, :user_id, destination_attributes: [:city, :country]))
        redirect_to trip_path(@trip)
    else 
        flash[:errors] = @trip.errors.full_messages
        redirect_to edit_trip_path(@trip)
    end
  end


  # only deletes certain instances of trips not all
  # only deletes trips that dont have posts why? If I already added dependent destroy?!
  def destroy
    @trip =  Trip.find(params[:id])
    user_id = @trip.user.id
    @trip.destroy
    flash[:destroy] = "The trip has been deleted!!!"
    #byebug
    redirect_to trips_path
  end

  private

  def find_trip
    #byebug
    @trip = Trip.find(params[:id])
  end
    
  def trip_params(*args)
    params[:trip][:user_id] = User.last.id
    params.require(:trip).permit(*args)
  end
 
end
