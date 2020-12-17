class RentalsController < ApplicationController
  
  def index
    @rentals = Rental.includes(:customer, :vehicle).order(start_date: :asc).all
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)

    if @rental.save
    else
      render :new
    end
  end

  def all_rental_payment_due
    @rental_dues = Rental.where("payment_date >=returned_date")
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :order_date, :rental_type, :qty, :return_date, :total_amount, :payment_date)
  end
end
