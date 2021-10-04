class Day < ApplicationRecord
  belongs_to :shop
  has_many :slots, dependent: :destroy
end
