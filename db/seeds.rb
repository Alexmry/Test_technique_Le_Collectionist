# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating 100 fake shops...'
Shop.destroy_all
puts 'Data base is clean'



10.times do
  shop = Shop.new(
    name: Faker::Company.name
  )
  shop.save!
  puts "shop #{shop.id} is created"
end
puts 'Finished!'


week_days = ['lundi', 'mardi', 'mercredi', 'jeudi', 'vendredi', 'samedi', 'dimanche']

shops_id = []
shops = Shop.all
shops.each do |shop|
    shops_id << shop.id
end

puts "creating jours"
for i in 0..6
    day = Day.new(
        name: week_days[i],
        closed: false,
        shop_id: shops_id.sample
    )
    day.save!
    puts "day id #{day.id} #{day.name} is created"
end
puts 'Finished!'











