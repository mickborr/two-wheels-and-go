class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :number_of_days
      t.references :vehicle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
