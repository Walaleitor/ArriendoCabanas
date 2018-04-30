class CustomersController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update, :destroy]

  def index
    @customers = Customer.all
  end

  def show
  end

  def new
    @customer = Customer.new
    @customer.reservations.build
    @cabin = Cabin.find(params[:id])
  end

  def create
    @customer = Customer.new(customer_params)
    reservation = @customer.reservations.first
    start_d = reservation.start_date
    end_d = reservation.end_date
    if end_d.year == start_d.year && end_d.month == start_d.month && end_d.day > start_d.day
      if @customer.save
        redirect_to reservations_path
      else
        render "new"
      end
    elsif end_d.year == start_d.year && end_d.month > start_d.month
      if @customer.save
        redirect_to reservations_path
      else
        render "new"
      end
    elsif end_d.year > start_d.year
      if @customer.save
        redirect_to reservations_path
      else
        render "new"
      end
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
    #set_params
    @customer.destroy
  end

  private

  def set_params
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :rut, :email, :address, :phone, reservations_attributes: [:start_date, :end_date, :cabin_id])
  end
end
