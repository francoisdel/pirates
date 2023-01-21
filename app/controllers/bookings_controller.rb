class BookingsController < ApplicationController
  before_action :set_boat, only: %i[new create]
  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.boat = @boat
    @booking.user = current_user
    @booking.save
    redirect_to boat_path(@boat)
  end


  def show
    @booking =  Boat.find(params[:id])

  end

  private

  def set_boat
    @boat = Boat.find(params[:boat_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end


end
