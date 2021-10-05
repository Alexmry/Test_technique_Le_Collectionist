class Slot < ApplicationRecord
  belongs_to :day
  # validation pour eviter les chevauchement des slots
end
