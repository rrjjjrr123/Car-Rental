class VehiclesController < ApplicationController
  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save
      redirect_to @vehicle
    else
      render :new
    end
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:vehicle_id, :description, :year, :category, :vehicle_type)
  end
end
