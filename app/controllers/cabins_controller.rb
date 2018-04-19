class CabinsController < ApplicationController
   before_action :set_cabin, only: [:show ,:edit, :update, :destroy]


  #Pide todas las cabañas para luego listarlas
  def index
    @cabins = Cabin.all
  end

  #Crea un objeto cabaña vacio para poder mostrar la vista new
  def new
    @cabin = Cabin.new
  end

  #trae una cabaña respecto al id
  def show
    #set_cabin
  end

  #crea cabaña
  def create
    @cabin = Cabin.new(cabin_params)
    if @cabin.save
      redirect_to @cabin
    else
      render :new
    end
  end

  #manda a llamar una cabaña respecto al id para mostrar la vista edit
  def edit
    #set_cabin
  end

  #edit una cabaña respecto al id
  def update
    #set_cabin
    if @cabin.update(cabin_params)
      redirect_to @cabin
    else
      render :edit
    end
  end

  #llama una cabaña respecto a un id y luego la mestruye
  def destroy
    #set_params
    @cabin.destroy
  end

  private

  def cabin_params
    params.require(:cabin).permit(:tipo, :name)
  end

  def set_cabin
    @cabin = Cabin.find(params[:id])
  end

end
