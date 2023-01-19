class BoatsController < ApplicationController
  before_action :set_boat, only: %i[show edit update delete]

  def index

    @boats = policy_scope(Boat)

  end

  def show
    authorize @boat
  end

  def new
    @boat = Boat.new
    authorize @restaurant # Add this line
  end

  def create
    # @boat = Boat.new(boat_params)
    # @boat.user = current_user
    # @boat.save
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    authorize @boat # Add this line
  end

  def edit
    authorize @restaurant # Add this line
  end

  def update

    @boat = Boat.new(boat_params)
    authorize @restaurant # Add this line
    @boat.save
  end

  def delete
    @boat = Boat.delete
    authorize @restaurant # Add this line
  end

  private
  def set_boat
    @boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:price, :description, :location)
  end

end
