class ReservationBicyclesController < ApplicationController

    def add
        @cabin = Cabin.find(params[:cabin_id])
        @reservation = @cabin.reservations.find(params[:id])
        @bicycles = @cabin.bicycles.all
        @payments = @reservation.bicycle_payments.all

    end
end
