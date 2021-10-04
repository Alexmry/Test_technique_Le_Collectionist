class Slot < ApplicationRecord
  belongs_to :days, optional: true
end
