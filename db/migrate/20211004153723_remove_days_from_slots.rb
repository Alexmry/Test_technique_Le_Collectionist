class RemoveDaysFromSlots < ActiveRecord::Migration[6.1]
  def change
    remove_column :slots, :days_id
  end
end
