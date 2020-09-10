class DestinationsController < ApplicationController
  before_action :find_destination, only: [:show, :edit, :update, :destroy]

  def index
    @destinations = Destination.all 
    @top_five = Destination.popular_destinations
  
  end

  def show

    @destination = Destination.find(params[:id])

  end

 

  private

  def find_destination
    @destination = Destination.find(params[:id])
  end

end
