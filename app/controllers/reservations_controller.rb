class ReservationsController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @reservations = Reservation.all
  end

  def show
    #set_params
  end

  def new
    @cabin = Cabin.find(params[:cabin_id])
    @reservation = @cabin.reservations.new
    @customers = Customer.all
  end

  def create
    @cabin = Cabin.find(params[:cabin_id])
    @reservation = @cabin.reservations.new(reservation_params)
    if @reservation.save
        redirect_to cabin_path(@cabin)
    else
        render "new"
    end
  end

  def edit

  end

  def update

    if @reservation.update(reservation_edit_params)
      redirect_to cabin_reservation_path(@cabin,@reservation) , notice: "Actualizado con exito"
    else
      redirect_back(fallback_location: 'something', notice: "no se puede actualizar")
    end
  end

  def destroy
    #set_params
    @reservation.destroy
  end

  private

  def set_params
    @cabin = Cabin.find(params[:cabin_id])
    @reservation = @cabin.reservations.find(params[:id])
  end

  def reservation_edit_params
    params.require(:reservation).permit(:start_date, :end_date, :price, :state)
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :customer_id, :price)
  end

end
