class CreateSlots < ActiveRecord::Migration[6.1]
  def change
    create_table :slots do |t|
      t.time :start_at
      t.time :end_at
      t.references :days, null: false, foreign_key: true

      t.timestamps
    end
  end
end
