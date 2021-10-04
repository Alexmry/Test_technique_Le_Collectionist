class Shop < ApplicationRecord
  has_many :days, dependent: :destroy

  # jour actuel en premier, et en gras



end
