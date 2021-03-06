class AddCountryToVehicle < ActiveRecord::Migration[6.0]
  def change
    add_column :vehicles, :country, :string
  end
end
