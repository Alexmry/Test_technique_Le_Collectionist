class Shop < ApplicationRecord
  has_many :days, dependent: :destroy

  # jour actuel en premier, et en gras

  # def display_slot(day)
  # end

end
