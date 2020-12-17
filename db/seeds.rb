# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating users...'
User.destroy_all
199.times do
  first_name = Faker::Name.unique.first_name
  last_name = Faker::Name.unique.last_name
  user_data = {
    first_name: first_name,
    last_name: last_name,
    email: "#{first_name.downcase}.#{last_name.downcase}@unmsm.edu.pe",
    password: "#{first_name.downcase}#{last_name.downcase}#{rand(1..100)}",
    state: rand(0..2)
  }
  User.create(user_data)
end
puts "Users created!"