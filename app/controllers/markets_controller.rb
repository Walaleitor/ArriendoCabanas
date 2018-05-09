class MarketsController < ApplicationController
  def index
  end

  def show
    @cabin = Cabin.find(params[:id])
    @products = @cabin.bicycles.all
    @services = @cabin.products.all
    @bicycles = @cabin.services.all
  end
end
