class BoatsController < ApplicationController
  before_action :set_boat, only: %i[edit update delete]

  def index
    if params[:query].present?
      @boats = Boat.where(location: params[:query])
    else
      @boats = Boat.all
    end
    @unique_boats = @boats.uniq{|b| [b.location, b.photo]}
  end

  def quote
    start_time = params[:start_time]
    end_time = params[:end_time]
    boat_id = params[:boat_id]
    hours_booked = ((end_time - start_time) / 3600).round
    boat = Boat.find(boat_id)
    price = hours_booked * boat.price
    render json: {price: price}
  end


  def show
    @boat = Boat.find(params[:id])
    @display_card_category = true
    @display_hero_heading = true
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    @boat.save
    redirect_to boats_path
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
    params.require(:boat).permit(:name, :price, :description, :location)
  end

end
