# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(:name => "Bike", :description => "Colourful bicycle..", :image_url => "http://www.publicdomainpictures.net/pictures/210000/velka/colorful-bicycle.jpg", :colour => "Pink", :price => "30")
