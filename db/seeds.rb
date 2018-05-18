# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Planet.destroy_all

 p1 = Planet.create name: "Mercury", descritption: "Mercury is the smallest and innermost planet in the Solar System. ", orbit: 88, diameter: 0.5, mass: 33011, 
