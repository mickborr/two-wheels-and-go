class Vehicle < ApplicationRecord
  belongs_to :user
  validates :category, inclusion: { in:
    ['motorbike', 'electric motorbike', 'bicycle', 'electric bicycle', 'scooter',
     'electric scooter', 'kick scooter', 'electric kick scooter'] }
  validates :description, length: { in: 20..350 }, presence: true
  validates :name, :cost_per_day, presence: true
end
