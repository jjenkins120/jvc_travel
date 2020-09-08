class DestinationsController < ApplicationController
  before_action :find_destination, only: [:show, :edit, :update, :destroy]

  def index
    @destinations = Destination.all 
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_destination
    @destination = Destination.find(params[:id])
  end

end
