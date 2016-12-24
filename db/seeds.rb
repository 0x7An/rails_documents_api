# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |d|
	FDocument.create!(
		title: "Samurai #{d}",
		description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
		file_url: "https://docs.google.com/document/d/1Gd1HUBdWVffJ7i9xnmZXn79OZEHwivPCT9WJmfOMVV8/edit?usp=sharing",
		image_url: 'https://s-media-cache-ak0.pinimg.com/564x/6d/8c/f0/6d8cf0982ecec1924e5f9d0c528f73bb.jpg'
	)
end