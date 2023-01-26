require 'faker'

# Create fake users
5.times do
User.create(
email: Faker::Internet.email,
password: Faker::Internet.password
)
end

# Clear the existing data
Boat.destroy_all

# Clear the existing data
Booking.destroy_all

# Create an array of locations
locations = ["Vieux-Port de Cannes", "Port de Calvi", "Port de Honfleur", "Port de Sanary-sur-Mer", "Port de Saint-Jean-de-Luz", "Port de Paimpol"]

# Create an array of types
boat_types = ["yacht", "catamaran", "sailboat"]

yacht_pictures = ["https://storage.googleapis.com/boatpictures/Screenshot%202023-01-25%20at%2015.51.47.png", "https://storage.googleapis.com/boatpictures/Screenshot%202023-01-25%20at%2015.52.07.png", "https://storage.googleapis.com/boatpictures/Screenshot%202023-01-25%20at%2015.51.15.png"]
sailboat_pictures =["https://storage.googleapis.com/boatpictures/Screenshot%202023-01-25%20at%2015.52.38.png", "https://storage.googleapis.com/boatpictures/Screenshot%202023-01-25%20at%2015.52.46.png", "https://storage.googleapis.com/boatpictures/Screenshot%202023-01-25%20at%2015.52.31.png"]
catamaran_pictures = ["https://storage.googleapis.com/boatpictures/Screenshot%202023-01-25%20at%2015.53.22.png","https://storage.googleapis.com/boatpictures/Screenshot%202023-01-25%20at%2015.53.13.png","https://storage.googleapis.com/boatpictures/Screenshot%202023-01-25%20at%2015.53.06.png"]

# Create fake boats
# 50.times do
#   price =
#   case type
#   when "yacht" then rand(750..7000)
#   when "catamaran" then rand(50..200)
#   when "sailboat" then rand(25..300)
#   end
#   Boat.create(
#     name: Faker::Creature::Cat.name,
#     boat_type: type,
#     price: price,
#     location: locations.sample,
#     description: Faker::Lorem.paragraph,
#     user: User.all.sample,
#   )
# end

50.times do
  type = boat_types.sample
  case type
  when "yacht"
    price = rand(750..7000)
    photo = yacht_pictures.sample
  when "catamaran"
    price = rand(50..200)
    photo = catamaran_pictures.sample
  when "sailboat"
    price = rand(25..300)
    photo = sailboat_pictures.sample
  end
  Boat.create(
    name: Faker::Creature::Cat.name,
    boat_type: type,
    price: price,
    location: locations.sample,
    description: Faker::Lorem.paragraph,
    photo: photo,
    user: User.all.sample,
  )
end
