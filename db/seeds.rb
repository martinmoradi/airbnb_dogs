# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require "activerecord-reset-pk-sequence"

City.delete_all
City.reset_pk_sequence
Dog.delete_all
Dog.reset_pk_sequence
Dogsitter.delete_all
Dogsitter.reset_pk_sequence
Stroll.delete_all
Stroll.reset_pk_sequence


15.times do
    City.create!(city_name: Faker::Address.city)
end

50.times do 
	city = City.all.sample
      	dog = Dog.create!(
          name: Faker::Creature::Dog.name, 
          city_id: city.id
        )	

  sitter = Dogsitter.create!(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          city_id: city.id
        )	
 
 
  stroll = Stroll.create(
    dog_id: dog.id, 
    city_id: dog.city.id, 
    dogsitter_id: Dogsitter.where(city: dog.city).sample.id
  )	
end