class VehiclesController < ApplicationController

  def index
    @vehicles = Vehicle.all
  end


  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    puts "===========BEFORE#{@vehicle.inspect}=============="
    if @vehicle.save!
      puts "===========AFTER#{@vehicle.inspect}=============="
      redirect_to @vehicle
    else
      render :new
    end
  end

  def show

  end

  def search_vehicle
    @search = Vehicle.search(params[:search])
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:vehicle_id, :description, :year, :category, :vehicle_type)
  end
end
