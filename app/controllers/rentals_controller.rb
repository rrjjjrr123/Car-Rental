class RentalsController < ApplicationController
  include ApplicationHelper
  
  def index
    @rentals = Rental.includes(:customer, :vehicle).order(start_date: :asc).all
  end

  def new
    @rental = Rental.new
  end

  def create
    rental_days = (params[:rental][:return_date].to_date - params[:rental][:start_date].to_date).to_i
    rental_type_id = rental_days < 7 ? 1 : 7
    customer = Customer.find params[:cust_id]

    vehicle = Vehicle.where(vehicle_id: Rental.where(returned: 1).pluck(:vehicle_id)).select{|vehicle| vehicle.vehicle_type == params[:rental][:vehicle_type].to_i && Vehicle.categories[vehicle.category] == params[:rental][:category].to_i}.first
    @rental = Rental.new(rental_params.merge(cust_id: customer.id, rental_type: rental_type_id, order_date: DateTime.now, vehicle_id: vehicle.vehicle_id))
    total_amount = calcuate_rate(@rental)
    @rental = Rental.new(rental_params.merge(cust_id: customer.id, rental_type: rental_type_id, order_date: DateTime.now, vehicle_id: vehicle.vehicle_id, total_amount: total_amount))
    if @rental.save!
      redirect_to @rental
    else
      render :new
    end
  end

  def all_rental_payment_due
    @rentals = Rental.includes(:customer, :vehicle).order(start_date: :asc).all
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :order_date, :rental_type, :qty, :return_date, :total_amount, :payment_date, :vehicle_id, :end_date)
  end
end
