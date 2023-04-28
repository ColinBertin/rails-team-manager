# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

require 'faker'

Team.destroy_all
Sport.destroy_all
User.destroy_all
puts "Destroying all the data..."
puts "Creating new Sports..."
bas = Sport.new(name: 'Basketball')
foot = Sport.new(name: 'Football')
rug = Sport.new(name: 'Rugby')
bas.save!
foot.save!
rug.save!

puts "Creating new Users..."
User.create(
  email: "colin@gmail.com",
  password: "123456",
  admin: true
)

5.times do
  User.create(email: Faker::Internet.email, password: "123456")
end

Sport.all.each do |sport|
  10.times do
    Team.create(name: Faker::Team.sport, gender: ["Male", "Female"].sample, location: Faker::Team.state, user: User.all.sample, sport: sport)
  end
end

puts "Creating new Teams..."

puts "Just create #{Sport.count} sports!"
puts "Just create #{Team.count} teams!"
puts "Just create #{User.count} User!"
