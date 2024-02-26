class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.float :total_price
      t.string :booking_status
      t.references :user, null: false, foreign_key: true
      t.references :watch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
