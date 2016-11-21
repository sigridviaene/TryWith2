# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Experience.destroy_all
Category.destroy_all

cat_art = Category.create!(name: 'Art')
cat_sports = Category.create!(name: 'Sports')
cat_tech = Category.create!(name: 'Technology')
cat_music = Category.create!(name: 'Music')
cat_outdoors = Category.create!(name: 'Outdoors')
cat_history = Category.create!(name: 'History')

10.times do
 user = User.create!(
   email: Faker::Internet.email,
   first_name: Faker::Name.first_name,
   last_name:Faker::Name.last_name,
   facebook_picture_url: Faker::Avatar.image,
   city_name:Faker::Address.city,
   password: Faker::Internet.password(8)
 )

 [*5..10].sample.times do
     experience = Experience.create!(
      city:Faker::Address.city,
      description:Faker::ChuckNorris.fact,
      title:Faker::Lorem.sentences(1),
      startexperience:Faker::Time.forward(23, :evening),
      user: user,
      category: [cat_art, cat_sports, cat_tech, cat_music, cat_outdoors, cat_history].sample
      )
     experience.save!
 end


 user.save!

end


# bob = User.new(first_name:"bob", last_name: "bib", email: "bib@bob.be", city_name: "Brussel", password: 'bobbob')
# film = Experience.new(title: "harrypotter film", description: "zoek compagnon om mee de laatste Harry Potter - zucht jeugd sentiment - te gaan kijken", city: "Brussel", user_id: bob.id)
# bob.save!
# film.save!


