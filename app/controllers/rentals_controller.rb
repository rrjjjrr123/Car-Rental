class RentalsController < ApplicationController
  
  def index
    @rentals = Rental.includes(:customer, :vehicle).order(start_date: :asc).all
  end
end
