class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  before_save :calculate_price

  validates :start_date, :end_date, presence: true

  def calculate_price
    hours = (end_date - start_date) / 1.hour
    self.booking_price = hours * boat.price
  end


end
