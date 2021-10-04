class AddDayToSlots < ActiveRecord::Migration[6.1]
  def change
    add_reference :slots, :day, null: false, foreign_key: true
  end
end
