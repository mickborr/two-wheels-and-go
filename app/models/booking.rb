class Booking < ApplicationRecord
  belongs_to :vehicle
  belongs_to :user

  after_create :calculate_total_amount

  private

  def calculate_total_amount
    num_of_days = (end_date.to_date - start_date.to_date).to_i
    update_column(:total_cost, (vehicle.cost_per_day * num_of_days).round(2))
  end
end
