class VehiclesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @vehicles = Vehicle.all
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
    if @vehicle.save!
      redirect_to vehicles_path, notice: 'You successfully added a new vehicle.'
    else
      render :new
    end
  end
  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])
    @vehicle.update(vehicle_params)
    redirect_to my_vehicles_path, notice: 'You successfully update your vehicle.'
  end

  def my_vehicles
    @vehicles = Vehicle.where(user: current_user)
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.delete
    redirect_to my_vehicles_path
  end

  def show
    @vehicle = Vehicle.find_by(id: params[:id])
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:description, :cost_per_day, :category, :availability, :name, :user_id)
  end
end
