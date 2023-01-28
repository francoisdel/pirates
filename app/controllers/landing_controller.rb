class LandingController < ApplicationController
  def landing
    @tabs = true
    @boats = Boat.all.limit(4)
    @boats_to_display = Boat.all
    @markers = @boats_to_display.geocoded.map do |boat|
      {
        lat: boat.latitude,
        lng: boat.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {boat: boat}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  # def index
  #   content_for :skip_navbar, true
  #   @boats = Boat.all
  # end

  before_action :set_boat, only: %i[edit update delete]

  def index
    @boats = Boat.all
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
