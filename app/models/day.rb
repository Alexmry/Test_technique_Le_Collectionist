class Day < ApplicationRecord
  belongs_to :shop
  has_many :slots, dependent: :destroy
  # jour actuel en premier, et en gras

  def display_slot(day)
    # mettons que le day qu'on traite a 3 slots. On veut chainer les 3 slots dans une unique string.
    slots_to_display = []
    day.slots.each do |slot|
      slots_to_display << "#{slot.start_at.strftime("%H:%M")}-#{slot.end_at.strftime("%H:%M")}"
    end
    slots_to_display.join(", ") # pour avoir une string avec les slots séparés par des virgules
  end
end


