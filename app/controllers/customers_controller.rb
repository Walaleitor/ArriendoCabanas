class CustomersController < ApplicationController
  before_action :set_params, only: [:show , :edit, :update, :destroy]

  def index
    @customers = Customer.all
  end

  def show
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to(@customer)
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @customer.update(customer_params)
      redirect_to @customer
    else
      render "edit"
    end
  end

  def destroy
    @customer.destroy
  end

  private

  def set_params
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :rut, :email, :address, :phone)
  end
end
