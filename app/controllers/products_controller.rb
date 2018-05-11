class ProductsController < ApplicationController
	before_action :set_params, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
    #set_params
  end

  def new
    @cabin = Cabin.find(params[:cabin_id])
    @product = @cabin.products.new
  end

  def create
    @cabin = Cabin.find(params[:cabin_id])
    @product = @cabin.products.new(product_params)
    if @product.save
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
    if @product.update(product_params)
      redirect_back(fallback_location: 'something')
    else
      render "edit"
    end
  end

  def destroy
    #set_params
    @product.destroy
  end

  private

  def set_params
    @cabin = Cabin.find(params[:cabin_id])
    @product = @cabin.products.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :quantity, :price)
  end
end
