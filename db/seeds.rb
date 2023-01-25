# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Boat.create(name: "S.S. Minnow", price: 100, description: "Voilier monocoque, équipé d'un moteur auxiliaire. La voile est un plaisir immense et la sensation d'être propulsé par la seule force du vent est inégalée.
  ", location: "Port de Saint-Tropez")
Boat.create(name: "Black Pearl", price: 50, description: "Catamaran, très confortables. Equipé d'une grande cuisine, des cabines spacieuses et une salle de bain dans chaque coque.
  ", location: "Port de la vigne, lège cap ferret")
Boat.create(name: "Black Pearl", price: 75, description: "Catamaran à moteur avec tout le comfort d'un catamaran mais vous n'avez pas a vous occuper des voiles", location: "Port de La Rochelle")
