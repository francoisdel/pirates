class Booking < ApplicationRecord
  belongs_to :boat_id
  belongs_to :user_id
end
