class Day < ApplicationRecord
  belongs_to :shop
  has_many :slots, dependent: :destroy
  # jour actuel en premier, et en gras

  def display_slot(day)
    morning = day.slots.all
    #day.slots.all.Time.now.strftime("%H:%M")
  end
end


# opening_morning = day.slots.all
# closing_morning = day.slots.all
# opening_afternoon = day.slots.all
# closing_afternoon = day.slots.all

# puts "#{opening_morning} - #{closing_morning}, #{opening_afternoon} - #{closing_afternoon}"

# #day.slots.all.Time.now.strftime("%H:%M")
