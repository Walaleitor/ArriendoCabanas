class ServicesController < ApplicationController
	before_action :set_params, only: [:show, :edit, :update, :destroy]

  def index
    @services = Services.all
  end

  def show
    #set_params
  end

  def new
    @cabin = Cabin.find(params[:cabin_id])
    @service = @cabin.services.new
  end

  def create
    @cabin = Cabin.find(params[:cabin_id])
    @service = @cabin.services.create(service_params)
    if @service.save
      redirect_to market_path(@cabin)
    else
      render "new"
    end
  end

  def edit
    #set_params
  end

  def update
    #set_params
    if @service.update(service_params)
      redirect_to(@service)
    else
      render "edit"
    end
  end

  def destroy
    #set_params
    @service.destroy
  end

  private

  def set_params
    @cabin = Cabin.find(params[:cabin_id])
    @service = @cabin.services.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:name, :quantity, :value)
  end
end
