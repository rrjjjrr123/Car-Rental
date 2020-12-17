class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end


  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to @customer
    else
      render :new
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def search_customer
    @search = Customer.search(params[:search])
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :phone)
  end
end
