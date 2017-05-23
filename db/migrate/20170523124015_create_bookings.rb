class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.date :start_day
      t.integer :duration
      t.integer :price
      t.references :space, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
