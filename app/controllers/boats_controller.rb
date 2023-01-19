class BoatsController < ApplicationController
  before_action :set_boat, only: %i[edit update delete]

  def index

    @boats = Boat.all

  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    # @boat = Boat.new(boat_params)
    # @boat.user = current_user
    # @boat.save
    @boat = Boat.new(boat_params)
    @boat.user = current_user
  end

  def edit

  end

  def update

    @boat = Boat.new(boat_params)
    @boat.save
  end

  def delete
    @boat = Boat.delete
  end

  private
  def set_boat
    @boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:price, :description, :location)
  end

end
