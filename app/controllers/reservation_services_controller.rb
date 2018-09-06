class ReservationServicesController < ApplicationController

    def add
        @cabin = Cabin.find(params[:cabin_id])
        @reservation = @cabin.reservations.find(params[:id])        
    end
end
