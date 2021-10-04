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


week_days = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']


Shop.all.each do |shop|
  week_days.each do |week_day|
    Day.create(name: week_day, closed: true, shop_id: shop.id)
  end
end

puts 'Finished!'











