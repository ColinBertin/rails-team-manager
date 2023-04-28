# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

require 'faker'

Player.destroy_all
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

positions = ["Goal", "Defense", "Middle", "Forward"]

puts "Creating new Users..."
co = User.new(
  email: "colin@gmail.com",
  password: "123456",
  admin: true
)

co.save!

5.times do
  User.create(email: Faker::Internet.email, password: "123456")
end

Sport.all.each do |sport|
  10.times do
    Team.create(name: Faker::Team.sport, gender: ["Male", "Female"].sample, location: Faker::Team.state,
      user: User.all.sample, sport: sport
    )
  end
end

Team.all.each do |team|
  10.times do
    Player.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: rand(18..35),
      nationality: Faker::Nation.flag, position: positions.sample, team: team, user: team.user
    )
  end
end

puts "Creating new Teams..."

puts "Just create #{Sport.count} sports!"
puts "Just create #{User.count} users!"
puts "Just create #{Team.count} teams!"
puts "Just create #{Player.count} players!"
