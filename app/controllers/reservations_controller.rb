class ReservationsController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update, :destroy]

  def index
    @reservations = Reservation.all
  end

  def show
    #set_params
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @cabin = Cabin.find(params[:cabin_id])
    @reservation = @cabin.reservation.create(reservation_params)
    if @reservation.save
      redirect_to (@reservation)
    else
      render "new"
    end
  end

  def edit
    #set_params
  end

  def update
    #set_params
    if @reservation.update(reservation_params)
      redirect_to(@reservation)
    else
      render "edit"
    end
  end

  def destroy
    #set_params
    @reservation.destroy
  end

  private

  def set_params
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end

end
