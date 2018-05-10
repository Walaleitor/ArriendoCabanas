class BicyclesController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update, :destroy]

  def index
    @bicycles = Bicycle.all
  end

  def show
    #set_params
  end

  def new
    @bicycle = Bicycle.new
  end

  def create
    @cabin = Cabin.find(params[:id])
    @bicycle = @cabin.bicycles.new(bicycle_params)
    if @bicycle.save
      redirect_to market_path(@bicycle)
    else
      render "new"
    end
  end

  def edit
    #set_params
  end

  def update
    #set_params
    if @bicycle.update(bicycle_params)
      redirect_to(@bicycle)
    else
      render "edit"
    end
  end

  def destroy
    #set_params
    @bicycle.destroy
  end

  private

  def set_params
    @bicycle = Bicycle.find(params[:id])
  end

  def bicycle_params
    params.require(:bicycle).permit(:model, :ring_size, :tipo, :value)
  end
end
