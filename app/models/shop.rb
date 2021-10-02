class Shop < ApplicationRecord
  has_many :days, dependent: :destroy
end
