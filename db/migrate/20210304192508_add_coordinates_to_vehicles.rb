class AddCoordinatesToVehicles < ActiveRecord::Migration[6.0]
  def change
    add_column :vehicles, :latitude, :float
    add_column :vehicles, :longitude, :float
    add_column :vehicles, :address, :string
  end
end
