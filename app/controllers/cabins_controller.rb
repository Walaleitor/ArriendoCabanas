class CabinsController < ApplicationController
   before_action :set_cabin, only: [:show ,:edit, :update, :destroy]
  def index
    @cabins = Cabin.all
  end

  def new
    @cabin = Cabin.new
  end

  def show
    #set_cabin
  end

  def create
    @cabin = Cabin.new(cabin_params)
    if @cabin.save
      redirect_to @cabin
    else
      render :new
    end
  end

  def edit
    #set_cabin
  end

  def update
    #set_cabin
    if @cabin.update(cabin_params)
      redirect_to @cabin
    else
      render :edit
    end
  end

  def destroy
    @cabin.destroy
  end

  private

  def cabin_params
    params.require(:cabin).permit(:tipo, :description)
  end

  def set_cabin
    @cabin = Cabin.find(params[:id])
  end

end
