class PaymentsController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update, :destroy]

  def index
    @payments = Payment.all
  end

  def show
  end

  def new
    @payment = Payment.new
  end

  def create
    @payment = Payment.create
  end

  def edit
  end

  def update
    if @payment.update(payment_params)
    else
    end
  end

  def destroy
    @payment.destroy
  end


private

  def payment_params
    params.require(:payment).permit(:amount)
  end

  def set_params
    @payment = Payment.find(params[:id])
  end


end

