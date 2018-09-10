class ReservationProductsController < ApplicationController

    def add
        @cabin = Cabin.find(params[:cabin_id])
        @reservation = @cabin.reservations.find(params[:id])
        @products = @cabin.products.all
        @payments = @reservation.product_payments.all
        @product_payment = ProductPayment.new

    end
    def add_product
        @payment = ProductPayment.new(product_payments_params)
        @payment.save

    end

    def product_payments_params
        params.require(:customer).permit(:product_id, :reservation_id)
      end

end
