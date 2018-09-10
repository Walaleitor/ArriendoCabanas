class ReservationServicesController < ApplicationController

    def add
        @cabin = Cabin.find(params[:cabin_id])
        @reservation = @cabin.reservations.find(params[:id])
        @services = @cabin.services.all
        @payments = @reservation.service_payments.all
        @service_payment = ServicePayment.new

    end
    def add_service
        @payment = ServicePayment.new(service_payments_params)
        @payment.save

    end

    def service_payments_params
        params.require(:customer).permit(:service_id, :reservation_id)
      end

end
