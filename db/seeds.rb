# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

i = 0

10.times do
  city = City.new(name: Faker::Pokemon.location, zip_code: Faker::Address.zip_code)
  city.save
end
puts "ok city"
10.times do
  user = User.new(city_id: rand(1..City.count), first_name: Faker::Pokemon.name, last_name: Faker::Color.color_name, description: Faker::Pokemon.move, email: Faker::Internet.email, age: rand(1..666))
  user.save
end
puts "ok User"

20.times do
  puts "lol"
  goss = Gossip.new(user_id: rand(1..User.count), title: Faker::Lovecraft.deity, content: Faker::Lovecraft.fhtagn(3))
  puts goss.title
  goss.save
end
puts "ok gossip"