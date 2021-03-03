class VehiclesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:category].present?
      @vehicles = Vehicle.where(category: params[:category])
    else
      @vehicles = Vehicle.all
    end
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

  def show
    @vehicle = Vehicle.find_by(id: params[:id])
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:description, :cost_per_day, :category, :availability, :name, :user_id)
  end
end
