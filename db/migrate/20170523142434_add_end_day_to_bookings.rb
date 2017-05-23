class AddEndDayToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :end_day, :date
  end
end
