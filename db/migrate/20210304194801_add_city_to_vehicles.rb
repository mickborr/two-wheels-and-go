class AddCityToVehicles < ActiveRecord::Migration[6.0]
  def change
    add_column :vehicles, :city, :string
  end
end
