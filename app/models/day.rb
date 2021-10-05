class Day < ApplicationRecord
  belongs_to :shop
  has_many :slots, dependent: :destroy
  # jour actuel en premier, et en gras

  def display_slot(day)
    # day_slots = []
    opening_morning = day.slots.first.start_at.strftime("%H:%M")
    # day.slots.all.each do |slot|
    #   day_slots << slot.strftime("%H:%M")
    # end
    # return day_slots
  end
end


# opening_morning = day.slots.all
# closing_morning = day.slots.all
# opening_afternoon = day.slots.all
# closing_afternoon = day.slots.all

# puts "#{opening_morning} - #{closing_morning}, #{opening_afternoon} - #{closing_afternoon}"

# #day.slots.all.Time.now.strftime("%H:%M")
