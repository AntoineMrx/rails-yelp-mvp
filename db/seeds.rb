# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'

Restaurant.create(name: 'La tour d\'argent', address: '75001 Paris', phone_number: '0478935624', category: 'french')
Restaurant.create(name: 'Shangai Délices', address: '69001 Lyon', phone_number: '0498445690', category: 'chinese')
Restaurant.create(name: 'Sushi plaiz', address: '42000 Saint Etienne', phone_number: '0534889065', category: 'japanese')
Restaurant.create(name: 'La trattoria', address: '34000 Lyon', phone_number: '0356772311', category: 'italian')
Restaurant.create(name: 'Frite une fois', address: '3209 Bruxelles', phone_number: '88956798', category: 'belgian')

puts "finish"
