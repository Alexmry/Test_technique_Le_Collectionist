class Day < ApplicationRecord
  belongs_to :shop
  has_many :slots, dependent: :destroy
  # jour actuel en premier, et en gras

  def display_slot(day)
    # day_slots = []
    opening_morning = day.slots.first.start_at.strftime("%H:%M")
    closing_morning = day.slots.first.end_at.strftime("%H:%M")
    opening_afternoon = day.slots.first.start_at.strftime("%H:%M")
    closing_afternoon = day.slots.first.end_at.strftime("%H:%M")
    unique_opening = day.slots.first.start_at.strftime("%H:%M")
    unique_closing = day.slots.first.end_at.strftime("%H:%M")

    # if unique_opening != nil && unique_closing != nil
    #   return unique_opening + "-" + unique_closing
    # else
      return opening_morning + "-" + closing_morning + ", " + opening_afternoon + "-" + closing_afternoon
    # end
  end
end
