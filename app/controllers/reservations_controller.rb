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
    @reservation = Reservation.create(reservation_params)
    start_d = @reservation.start_date
    end_d = @reservation.end_date
    if end_d.year >= start_d.year && end_d.month >= start_d.month && end_d.day > start_d.day
      if @reservation.save
        redirect_to (@reservation)
      else
        render "new"
      end
    else
      render 'new'
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
