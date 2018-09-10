class MarketsController < ApplicationController
    before_action :authenticate_user!
  def index
  end

  def show
    @cabin = Cabin.find(params[:id])
    @services = @cabin.services.all
    @bicycles = @cabin.bicycles.all
    @products = @cabin.products.all
  end
end
