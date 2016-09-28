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
  u = User.new(email: Faker::Internet.email, first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, facebook_picture_url: Faker::Avatar.image, city_name:Faker::Address.city, password: Faker::Internet.password(8))
  u.save
end

10.times do
  exp = Experience.new(city:Faker::Address.city, description:Faker::ChuckNorris.fact, title:Faker::Lorem.sentences(1), startexperience:Faker::Time.forward(23, :evening), user_id: User.all.sample.id)
  exp.save
end


# bob = User.new(first_name:"bob", last_name: "bib", email: "bib@bob.be", city_name: "Brussel", password: 'bobbob')
# film = Experience.new(title: "harrypotter film", description: "zoek compagnon om mee de laatste Harry Potter - zucht jeugd sentiment - te gaan kijken", city: "Brussel", user_id: bob.id)
# bob.save!
# film.save!


