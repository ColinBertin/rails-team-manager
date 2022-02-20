# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first
Sport.destroy_all
puts "Destroying all the sports..."
Sport.create(name: 'Basketball')
puts "Creating new Sports..."
Sport.create(name: 'Football')

puts "Just create #{Sport.count} sports!"
