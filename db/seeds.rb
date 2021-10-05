# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating 10 fake shops...'
Shop.destroy_all
Day.destroy_all
Slot.destroy_all
puts 'Data base is clean'



10.times do
  shop = Shop.new(
    name: Faker::Company.name
  )
  shop.save!
  puts "shop #{shop.id} is created"
end



week_days = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']
opening_morning = Time.new(2021, 12, 30, 8, 30, 0)
closing_morning = Time.new(2021, 12, 30, 12, 30, 0)

Shop.all.each do |shop|
  #pour toutes les shops
  week_days.each do |week_day|
    #tous les jours
    current_day = Day.create(name: week_day, closed: true, shop_id: shop.id)
      Slot.create(start_at: opening_morning, end_at: closing_morning, day_id: current_day.id)
      # on crée des slots
      puts "slot created #{current_day.id}"
  end
end

puts 'Finished!'





















