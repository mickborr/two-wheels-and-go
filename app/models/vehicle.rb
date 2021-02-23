class Vehicle < ApplicationRecord
  belongs_to :user
  validates :category, inclusion: { in:
    ["trottinette", "trottinette électrique", "vélo", "vélo électrique",
     "scooter", "scooter électrique", "moto", "moto électrique"] }
  validates :description, length: { in: 20..350 }, presence: true
  validates :name, :cost_per_day, presence: true
end
