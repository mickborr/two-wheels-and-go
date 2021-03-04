class Vehicle < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  validates :category, inclusion: { in:
    ['motorbike', 'electric motorbike', 'bicycle', 'electric bicycle', 'scooter',
     'electric scooter', 'kick scooter', 'electric kick scooter'] }
  validates :description, length: { in: 20..350 }, presence: true
  validates :name, :cost_per_day, :city, :address, presence: true
end
