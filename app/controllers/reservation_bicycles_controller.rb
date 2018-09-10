class ReservationBicyclesController < ApplicationController

    def add
        @cabin = Cabin.find(params[:cabin_id])
        @reservation = @cabin.reservations.find(params[:id])
        @bicycles = @cabin.bicycles.all
        @payments = @reservation.bicycle_payments.all
        @bicycle_payment = BicyclePayment.new

    end
    def add_bicycle
        @payment = BicyclePayment.new(bicycle_payments_params)
        @payment.save          

    end

    def bicycle_payments_params
        params.require(:customer).permit(:bicycle_id, :reservation_id)
      end

end
