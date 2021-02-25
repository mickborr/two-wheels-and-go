class VehiclesController < ApplicationController

  def index
    @vehicles = Vehicle.all
  end

  def new
    @user = current_user
    @vehicle = Vehicle.new
  end

  def create
    @vehicle.create(vehicle_params)
    redirect_to vehicles_path
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:description, :cost_per_day, :category, :availability, :name, :user_id)
  end
end
