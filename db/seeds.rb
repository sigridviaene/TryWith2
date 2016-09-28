# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Experience.destroy_all

10.times do
  u = User.new(email: Faker::Internet.email, first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, facebook_picture_url: Faker::Avatar.image, city_name:Faker::Address.city)
  u.save
end

10.times do
  exp = Experience.new(city:Faker::Address.city, description:Faker::ChuckNorris.fact, title:Faker::Lorem.sentences(1), startexperience:Faker::Time.forward(23, :evening) )
  exp.save
end

